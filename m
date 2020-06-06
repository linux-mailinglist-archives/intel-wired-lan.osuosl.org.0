Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A6C1F2174
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jun 2020 23:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 54FB686FBB;
	Mon,  8 Jun 2020 21:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9pzTny5NEyR; Mon,  8 Jun 2020 21:25:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 443EC86E53;
	Mon,  8 Jun 2020 21:25:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D95E1BF477
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jun 2020 20:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 38E788618D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jun 2020 20:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OYnlKI-Q2LtA for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Jun 2020 20:01:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C37B86153
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jun 2020 20:01:29 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id c14so13391974qka.11
 for <intel-wired-lan@lists.osuosl.org>; Sat, 06 Jun 2020 13:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Pq6RzQqJCNvdcxNmu8B5Dj+UAbb2+P92x9klLCwkTg=;
 b=snyxI1RFz4ks9PuyfJj3AxurO0chMruanXZ4FnuGVI+PtJ8+px+72zjIAOr27ekn0D
 XraBfMx3R5YFIXc+cr9zw/rejrQL8CWlZ0zjvmMv4l4UWQay4UWiUC0IlVINrxGJKUDE
 VFuKWUUtwEetvUMSTSW6J/SBJGIgCMxpuZ6vMAETDsC2fT9gY+G0B2gwP76MwCRxhRvh
 /8XNqPoimET0t01e5gPHwEi95jaPxlulGpbcGkM/IK0mG/CGlfX7o+uaapqaUCoEvchF
 4no8e2CQFkig7qtwEXrh0zgYaVsVXM1Ahiu7llTifsB69tg6rTxIcI5y0N6FZOBfXnKE
 pLyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Pq6RzQqJCNvdcxNmu8B5Dj+UAbb2+P92x9klLCwkTg=;
 b=gNz2cdccv9Bb2d2PgdBxD2bB1tLR7Z6TrK5cVGCwmlz3PM2jwepArtwKanTXQ8l9oF
 Ya7qRecH31z5RmhGoz6J/CowgknPQFJ3SRI86rDZVVI5Bs82LGFFKIZ5EvZW0LWl+gJm
 /2CmB5dZBXPBz8nZ/+nbZf+qA9x9z+iPqQzxqYwSaUgYS7L5LIRH56zRlhkZWUYqEn9O
 st4wKKvtWEjOH4lAXpOS0sCEXjOS5ru789c0XJ36aYCvafTpxyTGSdTmAwnoSLj+mATg
 LCDTfTdx93YqEnLd6q2VAyOkfa4GEv3rVPS9sdVO6pW92qQdQ5G9YWx6TppsWug9PXpL
 Fh0Q==
X-Gm-Message-State: AOAM531wvQlJNeOHI5u7Jzasdddfbt4W7l7I8Z+7Urbxfg1PxgJGgkqt
 k1KwfJtBTGvwXBMdQxUd+JlDZg==
X-Google-Smtp-Source: ABdhPJxaj9ZWumNwHhmlL7/HI4iCEPKtVDD/DQlVN8Qr2cveSXoE+w30VfvYEcyRHG62uRqGgA9R8Q==
X-Received: by 2002:a37:4595:: with SMTP id
 s143mr16482248qka.449.1591473688461; 
 Sat, 06 Jun 2020 13:01:28 -0700 (PDT)
Received: from ovpn-112-93.phx2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id e1sm3170960qto.51.2020.06.06.13.01.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Jun 2020 13:01:27 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: jeffrey.t.kirsher@intel.com
Date: Sat,  6 Jun 2020 16:01:16 -0400
Message-Id: <20200606200116.1398-1-cai@lca.pw>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 08 Jun 2020 21:25:08 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: silence an UBSAN false positive
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Qian Cai <cai@lca.pw>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

virtchnl_rss_lut.lut is used for the RSS lookup table, but in
i40e_vc_config_rss_lut(), it is indexed by subscript results in a false
positive.

 UBSAN: array-index-out-of-bounds in drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:2983:15
 index 1 is out of range for type 'u8 [1]'
 CPU: 34 PID: 871 Comm: kworker/34:2 Not tainted 5.7.0-next-20200605+ #5
 Hardware name: HPE ProLiant DL385 Gen10/ProLiant DL385 Gen10, BIOS A40 03/09/2018
 Workqueue: i40e i40e_service_task [i40e]
 Call Trace:
  dump_stack+0xa7/0xea
  ubsan_epilogue+0x9/0x45
  __ubsan_handle_out_of_bounds+0x6f/0x80
  i40e_vc_process_vf_msg+0x457c/0x4660 [i40e]
  i40e_service_task+0x96c/0x1ab0 [i40e]
  process_one_work+0x57d/0xbd0
  worker_thread+0x63/0x5b0
  kthread+0x20c/0x230
  ret_from_fork+0x22/0x30

Fixes: d510497b8397 ("i40e: add input validation for virtchnl handlers")
Signed-off-by: Qian Cai <cai@lca.pw>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 56b9e445732b..d5a959d91ba9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2971,6 +2971,7 @@ static int i40e_vc_config_rss_lut(struct i40e_vf *vf, u8 *msg)
 	struct i40e_vsi *vsi = NULL;
 	i40e_status aq_ret = 0;
 	u16 i;
+	u8 *lut = vrl->lut;
 
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vrl->vsi_id) ||
@@ -2980,13 +2981,13 @@ static int i40e_vc_config_rss_lut(struct i40e_vf *vf, u8 *msg)
 	}
 
 	for (i = 0; i < vrl->lut_entries; i++)
-		if (vrl->lut[i] >= vf->num_queue_pairs) {
+		if (lut[i] >= vf->num_queue_pairs) {
 			aq_ret = I40E_ERR_PARAM;
 			goto err;
 		}
 
 	vsi = pf->vsi[vf->lan_vsi_idx];
-	aq_ret = i40e_config_rss(vsi, NULL, vrl->lut, I40E_VF_HLUT_ARRAY_SIZE);
+	aq_ret = i40e_config_rss(vsi, NULL, lut, I40E_VF_HLUT_ARRAY_SIZE);
 	/* send the response to the VF */
 err:
 	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
-- 
2.21.0 (Apple Git-122.2)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
