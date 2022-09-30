import { Router } from "express";
import indexCtrl from "../controller/indexCtrl";
const router = Router()


router.get('/', indexCtrl.CtsCtrl.findAll)
router.get('/:id', indexCtrl.CtsCtrl.findOne)
router.post('/', uploadDownload.upload, indexCtrl.Job_historyCtrl.create)
//router.post('/next/',uploadDownload.upload, indexCtrl.Job_historyCtrl.createNext, indexCtrl.CtsCtrl.createnext)
router.put('/:id', uploadDownload.upload, indexCtrl.Job_historyCtrl.update)
router.delete('/:id', indexCtrl.CtsCtrl.deleted)
router.get('/sql/:id', indexCtrl.CtsCtrl.querySQL)
export default router