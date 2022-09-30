import { Router } from "express";
import indexCtrl from "../controller/indexCtrl";
import uploadDownload from '../../middleware/uploadDownload'
const router = Router()


router.get('/', indexCtrl.RegCtrl.findAll)
router.get('/:id', indexCtrl.RegCtrl.findOne)
router.post('/', uploadDownload.upload, indexCtrl.RegCtrl.create)
router.post('/next/',uploadDownload.upload, indexCtrl.RegCtrl.createNext, indexCtrl.CtsCtrl.createnext)
router.put('/:id', uploadDownload.upload, indexCtrl.RegCtrl.update)
router.delete('/:id', indexCtrl.RegCtrl.deleted)
router.get('/sql/:id', indexCtrl.RegCtrl.querySQL)
export default router