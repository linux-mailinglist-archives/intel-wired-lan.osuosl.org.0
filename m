Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60155885BF7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 16:34:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 058F860EA7;
	Thu, 21 Mar 2024 15:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Esj-nDCE2hb; Thu, 21 Mar 2024 15:34:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D948B607A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711035288;
	bh=jJZsBHwcwq2EKhTfcmV2KDI1h+H2DDxIsRSU6ooknBA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TWIJhnGqJ72WXOQwD/3eoSoEmXMhK1w9AT39iuLV+t1Igrn3EKjC/mePocW7NU2/z
	 jRBS7T0KUMj1eaAXzJ17SzSWy7mYl3Kl/Dsejrx51AuJj3cW0rrTom10jUVrbIjUrt
	 BzyQRDJ6acv+ikiP50c3CNHuqwwaLVfG0ctMMSAhetms1FaREjiewoXj2j8Dm3TiKC
	 8qfF4e0SWLunhqXWaSQ7YjYTnFUENqKP9oFMhc/goqji59spZzc46o43i+IhvKZvZU
	 Bgff2pdxDX7zmfp3IZC1KCyov3p/JD+mJGMsSGwgSm23oNwQTFoWxX2DV0vIc4E/Fd
	 +cLGKSv81iXiQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D948B607A8;
	Thu, 21 Mar 2024 15:34:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D625A1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 15:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C136D605FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 15:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f8Ylo-VWmgUZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 15:34:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::630; helo=mail-ej1-x630.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AD10A605EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD10A605EF
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD10A605EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 15:34:42 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-a4715d4c2cbso97296566b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 08:34:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711035280; x=1711640080;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jJZsBHwcwq2EKhTfcmV2KDI1h+H2DDxIsRSU6ooknBA=;
 b=XVtHotuPlqNPF7kCSiOGtzfftZPSUFL5OjjqP/U3wdCr/8MJUku6p4Zjh2gjrE50da
 K1K5I6KdexVhbH5Gy8RRKvHwsofM+HgzF4RB84XKr/TtkqZiUqNhycSPqwdLnt3ZnG43
 dZLUr7xpsyS8KxRggvJNj0651w26dgK1C67XTdkR5hQzFFBixvp/TRUuhf9rKvYmbExg
 JpaDjEHj5mTk5xBB9MJzeVzhEbYCBSlm2vDhgYGdOnKcVokeAK7x1jZcH/eW4GUMqB9y
 yqG584qDWf+VIcrEtxVTLJJKTm1ihmTvZ3QR5dbiaZzDX5Ey0k067oOdEjmk/KYktLeV
 e0Yg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWhVggvzbeQN9sU73vKc2pn5xDWy7VFPBlktlT7wPT3kQsLRp4dWzAcliaN6y4SfefhLpf2ztO0JNCcahb28V+JwIYQb/jc0ZpS8ev5IKDnwg==
X-Gm-Message-State: AOJu0YxAcPxEACRYxyPA+NzGyB0K5QPri8lH/OfYYcm3cLCEeLmxStev
 pBHZDUxXtDs/Q0S+ZBM5eW8bu+emqDIUfU1It//fXKpU+7mGwpFJhvg9ESFbEEA=
X-Google-Smtp-Source: AGHT+IGBqgVfVrdiQ/+9M8CkXnHsQmBgBd+MDFecT1hmDvu9F6AyiYmNOC25nNXzC5ijEZZ+4GiHwQ==
X-Received: by 2002:a17:906:ee89:b0:a46:be83:36e2 with SMTP id
 wt9-20020a170906ee8900b00a46be8336e2mr10664449ejb.24.1711035280409; 
 Thu, 21 Mar 2024 08:34:40 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 n19-20020a170906725300b00a46a9c38a64sm39732ejk.65.2024.03.21.08.34.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Mar 2024 08:34:39 -0700 (PDT)
Date: Thu, 21 Mar 2024 16:34:37 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZfxTjYUPAFz_LRlk@nanopsycho>
References: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1711035280; x=1711640080;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jJZsBHwcwq2EKhTfcmV2KDI1h+H2DDxIsRSU6ooknBA=;
 b=orc8j8Whl0tFShc7JpCyjwoRd7twAZ5VUADwUBlRbNdBvOwsQZKve8ETFP57dtwbq5
 /aRQIw468dlXudLGYGU2aqjefa/TJGhkJv9UhRiT9Hm0qGuo0CndxU+vwTEdoWMTEj1V
 TopYGkKQsnpyoy/ECILu9OR1oXR6T5U88b9XqU59cQ9vnodG/gpJJFcGWqAMlgZMMyk5
 dfJLQkNcBl6TL2xPZOZfVtAiK2TeY+nbxuO1F7F8ieG1M4cC4ci9C02YJbhl1gKCErg/
 YU5ju/Bj0AJ5ah6WS96LZbpXAoCo3zQfiMTUSuMSuEUDxqwkMcA8ujdZAZJ1lPliCvem
 /0hA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=orc8j8Wh
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Fix freeing uninitialized
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Mar 21, 2024 at 03:42:12PM CET, dan.carpenter@linaro.org wrote:
>Automatically cleaned up pointers need to be initialized before exiting
>their scope.  In this case, they need to be initialized to NULL before
>any return statement.
>
>Fixes: 90f821d72e11 ("ice: avoid unnecessary devm_ usage")
>Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>


>---
>v2: I missed a couple pointers in v1.
>
>The change to ice_update_link_info() isn't required because it's
>assigned on the very next line...  But I did that because it's harmless
>and makes __free() stuff easier to verify.  I felt like moving the
>declarations into the code would be controversial and it also ends up
>making the lines really long.
>
>		goto goto err_unroll_sched;
>
>	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) =
>		kzalloc(sizeof(*pcaps), GFP_KERNEL);

Yeah, that is why I'm proposing KZALLOC_FREE helper:
https://lore.kernel.org/all/20240315132249.2515468-1-jiri@resnulli.us/


>
> drivers/net/ethernet/intel/ice/ice_common.c | 10 +++++-----
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
> 2 file changed, 6 insertion(+), 6 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>index 4d8111aeb0ff..6f2db603b36e 100644
>--- a/drivers/net/ethernet/intel/ice/ice_common.c
>+++ b/drivers/net/ethernet/intel/ice/ice_common.c
>@@ -1002,8 +1002,8 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
>  */
> int ice_init_hw(struct ice_hw *hw)
> {
>-	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
>-	void *mac_buf __free(kfree);
>+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
>+	void *mac_buf __free(kfree) = NULL;
> 	u16 mac_buf_len;
> 	int status;
> 
>@@ -3272,7 +3272,7 @@ int ice_update_link_info(struct ice_port_info *pi)
> 		return status;
> 
> 	if (li->link_info & ICE_AQ_MEDIA_AVAILABLE) {
>-		struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
>+		struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
> 
> 		pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
> 		if (!pcaps)
>@@ -3420,7 +3420,7 @@ ice_cfg_phy_fc(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
> int
> ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
> {
>-	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
>+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
> 	struct ice_aqc_set_phy_cfg_data cfg = { 0 };
> 	struct ice_hw *hw;
> 	int status;
>@@ -3561,7 +3561,7 @@ int
> ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
> 		enum ice_fec_mode fec)
> {
>-	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
>+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
> 	struct ice_hw *hw;
> 	int status;
> 
>diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>index 255a9c8151b4..78b833b3e1d7 100644
>--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>@@ -941,11 +941,11 @@ static u64 ice_loopback_test(struct net_device *netdev)
> 	struct ice_netdev_priv *np = netdev_priv(netdev);
> 	struct ice_vsi *orig_vsi = np->vsi, *test_vsi;
> 	struct ice_pf *pf = orig_vsi->back;
>+	u8 *tx_frame __free(kfree) = NULL;
> 	u8 broadcast[ETH_ALEN], ret = 0;
> 	int num_frames, valid_frames;
> 	struct ice_tx_ring *tx_ring;
> 	struct ice_rx_ring *rx_ring;
>-	u8 *tx_frame __free(kfree);
> 	int i;
> 
> 	netdev_info(netdev, "loopback test\n");
>-- 
>2.43.0
>
>
>
