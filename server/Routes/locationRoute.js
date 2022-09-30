import { Router } from "express";
import indexCtrl from "../controller/indexCtrl";
const router = Router()


router.get('/', indexCtrl.CtsCtrl.findAll)
router.get('/:id', indexCtrl.CtsCtrl.findOne)
router.post('/', uploadDownload.upload, indexCtrl.LocCtrl.create)
//router.post('/next/',uploadDownload.upload, indexCtrl.LocCtrl.createNext, indexCtrl.CtsCtrl.createnext)
router.put('/:id', uploadDownload.upload, indexCtrl.LocCtrl.update)
router.delete('/:id', indexCtrl.CtsCtrl.deleted)
router.get('/sql/:id', indexCtrl.CtsCtrl.querySQL)
export default router