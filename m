Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B091597B1B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2024 17:02:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E61660E00;
	Tue, 17 Sep 2024 15:02:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rlhdP-JA-Syd; Tue, 17 Sep 2024 15:02:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A645F60E06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726585375;
	bh=uzFI0flTBpzz34Oi82eILZJHz97Z0LJ9TxmCYI0Kj0E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=O3sbSSe6mtrhIFP/12e/rSPhx54yqYrmHn5AW+HkBqyJwXvfVzeWfuwleDMS6trh+
	 Z3Qx66uNdBhlS1xTFGa7tn9rlP0u20kO7oH2XtEeV4wsU/5mFpS2ZxlZ1Sj31N6BKh
	 fzeNLgeiL50eXd6z89nJpnlUvYR/jnBZaJMbO+YVDXnn4SmWGIhIsCAPf1mmU8RtG8
	 XYJmC4KkxdHmVCMyZCKAKEtA/MFYh02NgOckK9MlnDcuiZc38nLpAM4ejzaNbcZxgW
	 O1Xthv8wv+WykmTV6IIeuxIvJfXSEJo5OMTI6MYVBP+wErKgK+p+nKNGjcIxUi+GJs
	 1wiZKCGBjTpTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A645F60E06;
	Tue, 17 Sep 2024 15:02:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D29481BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 13:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDD97608CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 13:13:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p9cIGTc8ZyP6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2024 13:13:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=117.135.210.3;
 helo=m16.mail.163.com; envelope-from=qianqiang.liu@163.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6ECA260745
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6ECA260745
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6ECA260745
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 13:13:27 +0000 (UTC)
Received: from localhost (unknown [120.26.85.94])
 by gzga-smtp-mta-g2-2 (Coremail) with SMTP id _____wD3vwtoOuRmVyplHA--.24763S2;
 Fri, 13 Sep 2024 21:13:13 +0800 (CST)
Date: Fri, 13 Sep 2024 21:13:12 +0800
From: Qianqiang Liu <qianqiang.liu@163.com>
To: junfeng.guo@intel.com
Message-ID: <ZuQ6aCn7QlVymj62@iZbp1asjb3cy8ks0srf007Z>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CM-TRANSID: _____wD3vwtoOuRmVyplHA--.24763S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKF4DGFyrKF45Jr47ZF1UZFb_yoW3CFc_X3
 4Y9a4fWrWUuFn3Ka15Kr4ava95AF47X3Z5XFykW393C34UJw4UJFn7WrZ7t3yDGF4akF9x
 CryrKa12yasxKjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUepWlPUUUUU==
X-Originating-IP: [120.26.85.94]
X-CM-SenderInfo: xtld01pldqwhxolxqiywtou0bp/1tbiYAxZamV4JOcNYwAAsv
X-Mailman-Approved-At: Tue, 17 Sep 2024 15:02:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
 Content-Type; bh=uzFI0flTBpzz34Oi82eILZJHz97Z0LJ9TxmCYI0Kj0E=;
 b=JS63M9A8R5p0WESrSOGPp+e2LmqdE0HGBLyHO6QCcqQK2Bk88mauwq0/mAoTgW
 BwNCXYHg7EUYPs81Xg9AyzcRmOOGfqfqRof7FNeVnlTU0tJq4ZWD4l99Lh0lWxr7
 qn7Vy40rL4alS+SUhuXyw3ITlp7g7BAumgShCqVxH3vTg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=JS63M9A8
Subject: [Intel-wired-lan] Is this an out-of-bounds issue?
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
Cc: przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The code in drivers/net/ethernet/intel/ice/ice_parser_rt.c:

114 static void ice_bst_key_init(struct ice_parser_rt *rt,
115                              struct ice_imem_item *imem)
116 {
117         u8 tsr = (u8)rt->gpr[ICE_GPR_TSR_IDX];
118         u16 ho = rt->gpr[ICE_GPR_HO_IDX];
119         u8 *key = rt->bst_key;
120         int idd, i;
121
122         idd = ICE_BST_TCAM_KEY_SIZE - 1;
123         if (imem->b_kb.tsr_ctrl)
124                 key[idd] = tsr;
125         else
126                 key[idd] = imem->b_kb.prio;

The "ICE_BST_TCAM_KEY_SIZE" macro is 20, so "idd" is 20 - 1 = 19.
"key" equals "rt->bst_key" which is an array, and the size of the
array is ICE_BST_KEY_SIZE which is 10.
Is it possible that 'key[idd]' might access invalid memory?
Should the "idd" be "ICE_BST_KEY_SIZE"?

-	idd = ICE_BST_TCAM_KEY_SIZE - 1;
+	idd = ICE_BST_KEY_SIZE - 1;

-- 
Best,
Qianqiang Liu

