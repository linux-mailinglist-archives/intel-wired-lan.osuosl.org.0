Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zwuPN1YOH2omewAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 19:09:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5709D630894
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 19:09:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=CnavvO9k;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8AE580BCA;
	Tue,  2 Jun 2026 17:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N3pVUBHbjPW8; Tue,  2 Jun 2026 17:09:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3AFA80815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780420175;
	bh=eIBVopWq7zxq+aSGsHvc+uH2DBh4l3IwFuOQqD9sPr0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CnavvO9kanBXs+5F6OjPUOA+9Hqc4/VCZYyidmw0mdt1rqx6E6HHNa48VTJ3W9TwT
	 yvdgbKiTaNdLXcGr31Lp+3qyA34btxLsyCzLNZjaEFqvWqGZQiqrpsa3JCVzKVXTxE
	 QA65rLQgnqM2cHwqAJxFiBCO1VZ0WZISDUYccLIgRN9EDZN94ybEVQTK6Y7uOGh+KQ
	 0kbbRz6c9RU0lmhZDH33q2cHnZxM9hN2hlztMIqBDS6Agny2XyyY/yCU4Khf2OxHOz
	 wucFi6BB3k43UyS4ZUYtVI/A5upL3rznDud+TQZ6nVmp1aQYIRwy9qMIGXZgQYd+nQ
	 3uBNP0Dh/jH8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3AFA80815;
	Tue,  2 Jun 2026 17:09:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 14134372
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC336822D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id chATpO9raanq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 17:09:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E079F822D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E079F822D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E079F822D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:32 +0000 (UTC)
X-CSE-ConnectionGUID: fqzNxms2QvyAaGjXYo8sog==
X-CSE-MsgGUID: rOxTNGwRRaSD9w8Xq1+IoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81074147"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81074147"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 10:09:32 -0700
X-CSE-ConnectionGUID: d4B4dpDBQ0eQczAFdgI7cw==
X-CSE-MsgGUID: v/tMakGuS1q4j2WO2Te0uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="241475797"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa008.fm.intel.com with ESMTP; 02 Jun 2026 10:09:32 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue,  2 Jun 2026 10:20:22 -0700
Message-Id: <20260602172024.2285947-2-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20260602172024.2285947-1-joshua.a.hay@intel.com>
References: <20260602172024.2285947-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780420173; x=1811956173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hZ3LjY0FdOT+Ls2asXDBQtTiyNZ/gHrSqtofS+DOL6I=;
 b=Z88wBBoBDAchPmdT47jeLDxzKthcYZZKiqSdFeuoR356lBEK4U+x3ghW
 PlD4M66t+TXbhyl1zw81BnsxpHeGYtz427XLOn85s/AYwsKtvXJfB6Hnq
 irDskd2fn0PfMkucYKNPZDAaCeHARczsdBfojqGXDmLl9tOYWoLZNse0V
 zaZqrs3DZwBktUe+hSnQWzNH/GdZeIDhvyUzdIdOWxHEXGQlOqRrGxeaN
 Uv8QgfYcKHq6b+u20SL27TnP+AruMNP5vN1uvg6m/UQef/Iqmx7WruqLl
 5hZ7Wd4skHuSrC04vIwVPWvuiy/a6lg/UcT7cOp6Pr2ALnMLuZPdELZUS
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z88wBBoB
Subject: [Intel-wired-lan] [PATCH net v2 1/3] idpf: do not enable XDP if
 queue based scheduling is not supported
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5709D630894

The current XDP implementation uses queue based scheduling for its TxQs.
If the FW does not advertise support for queue based scheduling, do not
enable XDP. Add the missing capability check at the start of the XDP
configuration. This will temporarily break XDP while a flow based
implementation is worked on, as well as while FWs with queue based by
default are rolled out.

Fixes: 705457e7211f ("idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
v1->v2: use local extack to use pass either properly initialized
xdp->extack or NULL to netlink macro.
---
 drivers/net/ethernet/intel/idpf/xdp.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index cbccd4546768..ecec7db4ebc0 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -510,6 +510,16 @@ int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 	if (!idpf_is_queue_model_split(vport->dflt_qv_rsrc.txq_model))
 		goto notsupp;
 
+	if (!idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
+			     VIRTCHNL2_CAP_SPLITQ_QSCHED)) {
+		struct netlink_ext_ack *extack = xdp->command == XDP_SETUP_PROG ?
+						 xdp->extack : NULL;
+
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Device does not support requested XDP Tx scheduling mode");
+		goto notsupp;
+	}
+
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
 		ret = idpf_xdp_setup_prog(vport, xdp);
-- 
2.39.2

