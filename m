Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJTqLE0g2mnEyggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2026 12:19:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 340243DF4AE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2026 12:19:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCE1541E55;
	Sat, 11 Apr 2026 10:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wKaJBTurBTMQ; Sat, 11 Apr 2026 10:12:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63E0840197
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775902349;
	bh=aY+ZObLSwWsXhnHHK1PlUlQk28w6zqlnBH6XYFBEOZM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CiShGdZntdg1VNKfCaOWoD7Ygez5yCdzuxKm1XMCUxe3BHEKA+NN8INOKN/iySa5b
	 eSUmWRSU+cPZs5rJFyjAgH6IqtSTHkUbaGUzUk0MIaKzCh0nUEFHSgImRnQUn/KHH7
	 Aj43UwC8IM/v+JzAgIoSeFg2PmIoAg4GEnsguX5tmeO7uKP0As/bfE5JnLvHG6Gunq
	 iIrCedzEwPQeqINIsU9AS9WKxLNzjqI/ydwJGFSIbX89qMfhx94Sao33RzSddL5zpJ
	 PmKLsctzLrTrCembRDP1hSuWWSOd4GJ3rH7/A293AjNLPrkURc7HBfMKkhZzubQhzU
	 yYIyPm1YTKhKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63E0840197;
	Sat, 11 Apr 2026 10:12:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4614E194
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2026 10:12:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3846141E52
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2026 10:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VzZBHRb6tM-H for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Apr 2026 10:12:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 85BEC40197
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85BEC40197
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85BEC40197
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2026 10:12:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C76F0437FC;
 Sat, 11 Apr 2026 10:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E7CFC4CEF7;
 Sat, 11 Apr 2026 10:12:26 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, stable <stable@kernel.org>
Date: Sat, 11 Apr 2026 12:12:16 +0200
Message-ID: <2026041116-retail-bagginess-250f@gregkh>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Lines: 62
X-Developer-Signature: v=1; a=openpgp-sha256; l=2515;
 i=gregkh@linuxfoundation.org; h=from:subject:message-id;
 bh=xeOwmbvZi8iIq2Y68tN3V7TkwozyYLvVfG0YS4MKjmE=;
 b=owGbwMvMwCRo6H6F97bub03G02pJDJm35BoMVPK/975pV2ZLmDXZcP3bci394zuzu/2Y028un
 8mgLZbbEcvCIMjEICumyPJlG8/R/RWHFL0MbU/DzGFlAhnCwMUpABOpYGGYp1D2SnfW/x/MmhI7
 Lt18H1SwwNGugmGuzEMf+63x0UrFuzg3CrVkVpbee54PAA==
X-Developer-Key: i=gregkh@linuxfoundation.org; a=openpgp;
 fpr=F4B60CC5BF78C2214A313DCB3147D40DDB2DFB29
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1775902346;
 bh=xeOwmbvZi8iIq2Y68tN3V7TkwozyYLvVfG0YS4MKjmE=;
 h=From:To:Cc:Subject:Date:From;
 b=Vvay9Ig4a2bEcyW7Z9ihyHzvIUEMxYpQ5kgkYCDsEnb4w7ZEQZFHRgtaKwdlO8O1R
 N8+RCgYmk+Y9s+s0loppd7EMwaN04ULgLgHgjO1PT4xOtT7P36/avFyshkMe6EwM1q
 yPRwb13JRrYIBFE2F2kdH1VsKQTTINhBNi9eStxY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=Vvay9Ig4
Subject: [Intel-wired-lan] [PATCH net] idpf: fix double free and
 use-after-free in aux device error paths
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
X-Spamd-Result: default: False [5.89 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linuxfoundation.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,body];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:email,davemloft.net:email,osuosl.org:dkim,intel.com:email,lunn.ch:email];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 340243DF4AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When auxiliary_device_add() fails in idpf_plug_vport_aux_dev() or
idpf_plug_core_aux_dev(), the err_aux_dev_add label calls
auxiliary_device_uninit() and falls through to err_aux_dev_init.  The
uninit call will trigger put_device(), which invokes the release
callback (idpf_vport_adev_release / idpf_core_adev_release) that frees
iadev.  The fall-through then reads adev->id from the freed iadev for
ida_free() and double-frees iadev with kfree().

Free the IDA slot and clear the back-pointer before uninit, while adev
is still valid, then return immediately.

Commit 65637c3a1811 65637c3a1811 ("idpf: fix UAF in RDMA core aux dev
deinitialization") fixed the same use-after-free in the matching unplug
path in this file but missed both probe error paths.

Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: stable <stable@kernel.org>
Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create, init, and destroy")
Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, init, and destroy")
Assisted-by: gregkh_clanker_t1000
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
Note, these cleanup paths are messy, but I couldn't see a simpler way
without a lot more rework, so I choose the simple way :)

 drivers/net/ethernet/intel/idpf/idpf_idc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index 7e4f4ac92653..b7d6b08fc89e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -90,7 +90,10 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
 	return 0;
 
 err_aux_dev_add:
+	ida_free(&idpf_idc_ida, adev->id);
+	vdev_info->adev = NULL;
 	auxiliary_device_uninit(adev);
+	return ret;
 err_aux_dev_init:
 	ida_free(&idpf_idc_ida, adev->id);
 err_ida_alloc:
@@ -228,7 +231,10 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
 	return 0;
 
 err_aux_dev_add:
+	ida_free(&idpf_idc_ida, adev->id);
+	cdev_info->adev = NULL;
 	auxiliary_device_uninit(adev);
+	return ret;
 err_aux_dev_init:
 	ida_free(&idpf_idc_ida, adev->id);
 err_ida_alloc:
-- 
2.53.0

