Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33DE885B01
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 15:42:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D59B4172A;
	Thu, 21 Mar 2024 14:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e1p9E72QYxEc; Thu, 21 Mar 2024 14:42:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93ABA4174C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711032142;
	bh=cLs/dDV1UD9+YTTOWzQvPyGzkwzyhPvhdwP32+SNXh8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UYaTteBK43+Nq4zLNGELTT0m9NWqIPo7JHhkIQ/s6/9uEJ49XB+iZ1cD3HEbjQXzy
	 k4Z+vIhTo0VpHu01MMJ49++n6YFy5LNN5sinTSW9eV1jB+VBR9Kfc5APd8XF9LkRFO
	 a+o81+SpubCcXWFqoRmjTkCGv5zl96zJsnhzCVwfIQEj1Cd8caA7hTCcB0mzEor0b+
	 u2STDVCiWGOLLtZclwLVggcQntEv7Xr0ajKsGQaTwFiH1skdqG5h+8VuF1aGEdisi9
	 0Aq1El08w/lX6+Ev7DB4U2dBQ0d4jcheGyd3WxsQDxUthB/uXo7ZASq/q1J7xowJYQ
	 XrHT7l10r9B7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93ABA4174C;
	Thu, 21 Mar 2024 14:42:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 374CC1BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 14:42:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22A92821F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 14:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tEzsvDG4L81M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 14:42:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EE9A28144C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE9A28144C
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE9A28144C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 14:42:18 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-414701303f7so10045645e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 07:42:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711032137; x=1711636937;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cLs/dDV1UD9+YTTOWzQvPyGzkwzyhPvhdwP32+SNXh8=;
 b=kwtK6bRf6OKv6P+ODoQ+qDZL/9cq5OpP7huWAbUIIbBiaG9QOc79fBCxDjOPQP1DSt
 +jVhZvEpNpxvCSJIEbal8PnrSYS8ZjpJAk2pdBNTvChiBcveqFXkW4W2ct/nPzPKs7mN
 wtdg9w9C47EZMF+XavJUqxFxZDZbPpTamiDqcD/86JcLw/1GY5QwfG+guzT3jwrIFQAj
 wfzcMkyQIswOz6K4pP1U8uIC9E9IGmQ3FC5OmGlGibOah5Cmvi1D9qehNJjZ1xwYu0X8
 QvmPK4olsMr8M90CEMdsQFJdUX1uT50GbI29whfOnAWMXP9aZtCJRg1V9pwhgTxVj49q
 acOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXCFE/3uC6lF+qfC/70zpZZLNxKskT0fA44PsC7J4akT1v6sqPBzElncO2lStNErZcLPo/7trxFZ1CHvg6wBhEYaWPVMMZo5bhtGm+eJ31mQQ==
X-Gm-Message-State: AOJu0YxtlfANIqVZVVRN1Xsh/tEVU8nhbURkv2yTzDrtlQXDpqXqZwkS
 boZ/1rTBniPjIpW2LTUkSj5xwVfLfbROKf6Va4IkViu6rOiI5Tg5DNRZ+oSkWaE=
X-Google-Smtp-Source: AGHT+IHuznWK1fDYECLfnbOiy0mQQtyDxu46Imz0+SQb6QkWQ7xPr240wa5yVilN5FQsTLQzECoF3Q==
X-Received: by 2002:a05:600c:3546:b0:413:feed:b309 with SMTP id
 i6-20020a05600c354600b00413feedb309mr2132109wmq.6.1711032136402; 
 Thu, 21 Mar 2024 07:42:16 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 n31-20020a05600c3b9f00b00414037f27a9sm5870295wms.31.2024.03.21.07.42.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Mar 2024 07:42:16 -0700 (PDT)
Date: Thu, 21 Mar 2024 17:42:12 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1711032137; x=1711636937; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cLs/dDV1UD9+YTTOWzQvPyGzkwzyhPvhdwP32+SNXh8=;
 b=Dr4Btu0LOinvxs79rcg7MS2laDusp923engOZOwQ/ubCyTvYzqZWJ5QhOGC1FVNyDh
 b06IMVbmuos5WY3/o17Oid6evBwh3oUrxWU0irFKBeSyI5vrlFH7GW+1hT/bZZjzt+T4
 cu9f/ZOFMt/MS9tDPCsWYtXqHMpscafB22SaBY6TnetQyZcqGnPhMAkf20ULt6Vq3A7Q
 Z+ny/WljpUS3XdvWZJaOQZ2ShuzrPN9jfgHBVvW6SE7sA6i3pVh1YA+1mu08RM8HrIil
 jiWHFcd6vZhH1eCM968pBto5o6C+ngnhnaGDtUkifMNl2AhkrSnENWIcBk1naplqjOdU
 c4rQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=Dr4Btu0L
Subject: [Intel-wired-lan] [PATCH v2 net] ice: Fix freeing uninitialized
 pointers
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Automatically cleaned up pointers need to be initialized before exiting
their scope.  In this case, they need to be initialized to NULL before
any return statement.

Fixes: 90f821d72e11 ("ice: avoid unnecessary devm_ usage")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v2: I missed a couple pointers in v1.

The change to ice_update_link_info() isn't required because it's
assigned on the very next line...  But I did that because it's harmless
and makes __free() stuff easier to verify.  I felt like moving the
declarations into the code would be controversial and it also ends up
making the lines really long.

		goto goto err_unroll_sched;

	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) =
		kzalloc(sizeof(*pcaps), GFP_KERNEL);

 drivers/net/ethernet/intel/ice/ice_common.c | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
 2 file changed, 6 insertion(+), 6 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 4d8111aeb0ff..6f2db603b36e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1002,8 +1002,8 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
  */
 int ice_init_hw(struct ice_hw *hw)
 {
-	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
-	void *mac_buf __free(kfree);
+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
+	void *mac_buf __free(kfree) = NULL;
 	u16 mac_buf_len;
 	int status;
 
@@ -3272,7 +3272,7 @@ int ice_update_link_info(struct ice_port_info *pi)
 		return status;
 
 	if (li->link_info & ICE_AQ_MEDIA_AVAILABLE) {
-		struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
+		struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
 
 		pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 		if (!pcaps)
@@ -3420,7 +3420,7 @@ ice_cfg_phy_fc(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 int
 ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 {
-	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
 	struct ice_aqc_set_phy_cfg_data cfg = { 0 };
 	struct ice_hw *hw;
 	int status;
@@ -3561,7 +3561,7 @@ int
 ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		enum ice_fec_mode fec)
 {
-	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
 	struct ice_hw *hw;
 	int status;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 255a9c8151b4..78b833b3e1d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -941,11 +941,11 @@ static u64 ice_loopback_test(struct net_device *netdev)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *orig_vsi = np->vsi, *test_vsi;
 	struct ice_pf *pf = orig_vsi->back;
+	u8 *tx_frame __free(kfree) = NULL;
 	u8 broadcast[ETH_ALEN], ret = 0;
 	int num_frames, valid_frames;
 	struct ice_tx_ring *tx_ring;
 	struct ice_rx_ring *rx_ring;
-	u8 *tx_frame __free(kfree);
 	int i;
 
 	netdev_info(netdev, "loopback test\n");
-- 
2.43.0


