Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A00B951DBF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 16:52:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95C0340402;
	Wed, 14 Aug 2024 14:52:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Y1UsyRtg239; Wed, 14 Aug 2024 14:52:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1E784040B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723647133;
	bh=x0z+shmhpVmM3UxM1TKRiuDEZOCx8yaGOMmub7K7E9U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YwH7FZimToY0BbCuFhp06g8ge+WuDRmxlpz831LbMZxZrOELlEwLHiChXjj25vgYk
	 4IBJo//sn5bcnNOTUK1kmm3RQQ6b225/X1OT6mtonSqIcmvjsVPnV28rnixi1TLIr7
	 mbv8pIsTU4JS48ROXaHTDzBhr4TrkiMjNrGYSd65/UUGnKH5QaT4cOcaKlWmlXnNcD
	 Kwsp3nfYgIq20Lbn55USK1f7Inp9+lApqyEJWwWs1DfjgweD+739Vg1yu5UkEoYseW
	 6y2A+YjHEeuskbgGaUuHs+jOvjRM9ksQWlGtVCx1OGlCN6tU+ySly0FvFAYiDLs7/v
	 WjWpBjr/3B+7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1E784040B;
	Wed, 14 Aug 2024 14:52:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 72A341BF599
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 14:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E767403D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 14:52:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B6zQpr3ixiJs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 14:52:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B8264400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8264400B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B8264400B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 14:52:08 +0000 (UTC)
X-CSE-ConnectionGUID: BNnxFkWLRImY8YpUU7ovEw==
X-CSE-MsgGUID: 9Me15Vl1ToyzYWz/QsNtWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="21728902"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="21728902"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 07:52:08 -0700
X-CSE-ConnectionGUID: vrtd5o3hTWGOz6hbJ27uDg==
X-CSE-MsgGUID: YfhRX44YSUeFPq7D503XFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="59174207"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 14 Aug 2024 07:52:06 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1seFM3-00025N-2w;
 Wed, 14 Aug 2024 14:52:03 +0000
Date: Wed, 14 Aug 2024 22:51:40 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202408142133.W175mlnf-lkp@intel.com>
References: <20240812221501.1705162-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240812221501.1705162-1-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723647129; x=1755183129;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fH9nqycAp4e66py/VxtqhL7SOKq8f1P35tkeWY1gFE8=;
 b=mpfvemr9dxfzyyJ6IzXqqxzXdsM6rG207pa5JMGMoS0wLSJpwSCaTdmA
 KCvlXYh264EE9QF4rwVloojUkawKYl0fhboh6W8NpJ4QzE1LgiGsogLRN
 YWQssKTcQ/p/j89vP6sKSYTbeLmfJp7ITc23comEm7RuPrFAAV/8Fe6NX
 FpMNBClURkDosPN85yPIf/zPh5roLKNZRYDUeF44nC+s1VvC2mU6QPGK1
 G4IZQpxBqcpS5BHdaPeJdmwQne4wUhyN1dKDM9e5spYuLvL+rXnzpT2bu
 SYn/bT7luunlYm23oYFK1auUla2SYaBqvd66NF+c9d3ZKIxry3hNJJSQ0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mpfvemr9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add E830 HW VF
 mailbox message limit support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: aleksander.lobakin@intel.com, llvm@lists.linux.dev,
 Paul Greenwalt <paul.greenwalt@intel.com>, oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Greenwalt/ice-add-E830-HW-VF-mailbox-message-limit-support/20240814-151255
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240812221501.1705162-1-paul.greenwalt%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: add E830 HW VF mailbox message limit support
config: i386-randconfig-006-20240814 (https://download.01.org/0day-ci/archive/20240814/202408142133.W175mlnf-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240814/202408142133.W175mlnf-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408142133.W175mlnf-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_main.c:1546:5: error: call to undeclared function 'ice_mbx_vf_dec_trig_e830'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    1546 |                                 ice_mbx_vf_dec_trig_e830(hw, &event);
         |                                 ^
   drivers/net/ethernet/intel/ice/ice_main.c:5269:39: warning: shift count >= width of type [-Wshift-count-overflow]
    5269 |         err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
         |                                              ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:77:54: note: expanded from macro 'DMA_BIT_MASK'
      77 | #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
         |                                                      ^ ~~~
   1 warning and 1 error generated.


vim +/ice_mbx_vf_dec_trig_e830 +1546 drivers/net/ethernet/intel/ice/ice_main.c

  1426	
  1427	/**
  1428	 * __ice_clean_ctrlq - helper function to clean controlq rings
  1429	 * @pf: ptr to struct ice_pf
  1430	 * @q_type: specific Control queue type
  1431	 */
  1432	static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
  1433	{
  1434		struct device *dev = ice_pf_to_dev(pf);
  1435		struct ice_rq_event_info event;
  1436		struct ice_hw *hw = &pf->hw;
  1437		struct ice_ctl_q_info *cq;
  1438		u16 pending, i = 0;
  1439		const char *qtype;
  1440		u32 oldval, val;
  1441	
  1442		/* Do not clean control queue if/when PF reset fails */
  1443		if (test_bit(ICE_RESET_FAILED, pf->state))
  1444			return 0;
  1445	
  1446		switch (q_type) {
  1447		case ICE_CTL_Q_ADMIN:
  1448			cq = &hw->adminq;
  1449			qtype = "Admin";
  1450			break;
  1451		case ICE_CTL_Q_SB:
  1452			cq = &hw->sbq;
  1453			qtype = "Sideband";
  1454			break;
  1455		case ICE_CTL_Q_MAILBOX:
  1456			cq = &hw->mailboxq;
  1457			qtype = "Mailbox";
  1458			/* we are going to try to detect a malicious VF, so set the
  1459			 * state to begin detection
  1460			 */
  1461			hw->mbx_snapshot.mbx_buf.state = ICE_MAL_VF_DETECT_STATE_NEW_SNAPSHOT;
  1462			break;
  1463		default:
  1464			dev_warn(dev, "Unknown control queue type 0x%x\n", q_type);
  1465			return 0;
  1466		}
  1467	
  1468		/* check for error indications - PF_xx_AxQLEN register layout for
  1469		 * FW/MBX/SB are identical so just use defines for PF_FW_AxQLEN.
  1470		 */
  1471		val = rd32(hw, cq->rq.len);
  1472		if (val & (PF_FW_ARQLEN_ARQVFE_M | PF_FW_ARQLEN_ARQOVFL_M |
  1473			   PF_FW_ARQLEN_ARQCRIT_M)) {
  1474			oldval = val;
  1475			if (val & PF_FW_ARQLEN_ARQVFE_M)
  1476				dev_dbg(dev, "%s Receive Queue VF Error detected\n",
  1477					qtype);
  1478			if (val & PF_FW_ARQLEN_ARQOVFL_M) {
  1479				dev_dbg(dev, "%s Receive Queue Overflow Error detected\n",
  1480					qtype);
  1481			}
  1482			if (val & PF_FW_ARQLEN_ARQCRIT_M)
  1483				dev_dbg(dev, "%s Receive Queue Critical Error detected\n",
  1484					qtype);
  1485			val &= ~(PF_FW_ARQLEN_ARQVFE_M | PF_FW_ARQLEN_ARQOVFL_M |
  1486				 PF_FW_ARQLEN_ARQCRIT_M);
  1487			if (oldval != val)
  1488				wr32(hw, cq->rq.len, val);
  1489		}
  1490	
  1491		val = rd32(hw, cq->sq.len);
  1492		if (val & (PF_FW_ATQLEN_ATQVFE_M | PF_FW_ATQLEN_ATQOVFL_M |
  1493			   PF_FW_ATQLEN_ATQCRIT_M)) {
  1494			oldval = val;
  1495			if (val & PF_FW_ATQLEN_ATQVFE_M)
  1496				dev_dbg(dev, "%s Send Queue VF Error detected\n",
  1497					qtype);
  1498			if (val & PF_FW_ATQLEN_ATQOVFL_M) {
  1499				dev_dbg(dev, "%s Send Queue Overflow Error detected\n",
  1500					qtype);
  1501			}
  1502			if (val & PF_FW_ATQLEN_ATQCRIT_M)
  1503				dev_dbg(dev, "%s Send Queue Critical Error detected\n",
  1504					qtype);
  1505			val &= ~(PF_FW_ATQLEN_ATQVFE_M | PF_FW_ATQLEN_ATQOVFL_M |
  1506				 PF_FW_ATQLEN_ATQCRIT_M);
  1507			if (oldval != val)
  1508				wr32(hw, cq->sq.len, val);
  1509		}
  1510	
  1511		event.buf_len = cq->rq_buf_size;
  1512		event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
  1513		if (!event.msg_buf)
  1514			return 0;
  1515	
  1516		do {
  1517			struct ice_mbx_data data = {};
  1518			u16 opcode;
  1519			int ret;
  1520	
  1521			ret = ice_clean_rq_elem(hw, cq, &event, &pending);
  1522			if (ret == -EALREADY)
  1523				break;
  1524			if (ret) {
  1525				dev_err(dev, "%s Receive Queue event error %d\n", qtype,
  1526					ret);
  1527				break;
  1528			}
  1529	
  1530			opcode = le16_to_cpu(event.desc.opcode);
  1531	
  1532			/* Notify any thread that might be waiting for this event */
  1533			ice_aq_check_events(pf, opcode, &event);
  1534	
  1535			switch (opcode) {
  1536			case ice_aqc_opc_get_link_status:
  1537				if (ice_handle_link_event(pf, &event))
  1538					dev_err(dev, "Could not handle link event\n");
  1539				break;
  1540			case ice_aqc_opc_event_lan_overflow:
  1541				ice_vf_lan_overflow_event(pf, &event);
  1542				break;
  1543			case ice_mbx_opc_send_msg_to_pf:
  1544				if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT)) {
  1545					ice_vc_process_vf_msg(pf, &event, NULL);
> 1546					ice_mbx_vf_dec_trig_e830(hw, &event);
  1547				} else {
  1548					u16 val = hw->mailboxq.num_rq_entries;
  1549	
  1550					data.max_num_msgs_mbx = val;
  1551					val = ICE_MBX_OVERFLOW_WATERMARK;
  1552					data.async_watermark_val = val;
  1553					data.num_msg_proc = i;
  1554					data.num_pending_arq = pending;
  1555	
  1556					ice_vc_process_vf_msg(pf, &event, &data);
  1557				}
  1558				break;
  1559			case ice_aqc_opc_fw_logs_event:
  1560				ice_get_fwlog_data(pf, &event);
  1561				break;
  1562			case ice_aqc_opc_lldp_set_mib_change:
  1563				ice_dcb_process_lldp_set_mib_change(pf, &event);
  1564				break;
  1565			default:
  1566				dev_dbg(dev, "%s Receive Queue unknown event 0x%04x ignored\n",
  1567					qtype, opcode);
  1568				break;
  1569			}
  1570		} while (pending && (i++ < ICE_DFLT_IRQ_WORK));
  1571	
  1572		kfree(event.msg_buf);
  1573	
  1574		return pending && (i == ICE_DFLT_IRQ_WORK);
  1575	}
  1576	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
