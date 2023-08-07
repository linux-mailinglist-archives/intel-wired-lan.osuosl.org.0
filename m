Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB90771B2A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 09:08:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFB3280EF1;
	Mon,  7 Aug 2023 07:08:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFB3280EF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691392129;
	bh=fUA7iyJ/DcyO782zRCJKkprKcq1EskaP65zr5dztmqE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tk66N4JQB5Ot9mMov7Yof22dXasLRA683VAvVXIXKvmlNnzKttfte8rbNRRwAJsob
	 Bgki++wlx89t0QM3HrnYlgTZFj90tIgnayj1fy6t/cVsJFBWctDuVnzYYBl2qxho9v
	 aXuLoKWOlgLjep0qnIc1f1pMGtikGdJreqHwiKUUFdYZKLws6Qjxk4mvDhtpUInepc
	 Bb3kIqQa+y5l9/Fogq100WGreCm5GuyZbsJwdAB3xhIUk9BiW46j0CR3p29I11cnOv
	 4Pmqa5ezln0qu3i0CNsl/5AM4gs1fEERTog5StYxOIoS4HaiwIqBhq7OFz5i5WV9/T
	 KoJzGB9hldyzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-9C-y_pWlw1; Mon,  7 Aug 2023 07:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3D5D80ED8;
	Mon,  7 Aug 2023 07:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3D5D80ED8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CF5E1BF357
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 07:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A589D41527
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 07:07:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A589D41527
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WMihX3enYs5z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 07:07:46 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 606D8408C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 07:07:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 606D8408C4
Received: by mail-lf1-x130.google.com with SMTP id
 2adb3069b0e04-4fe2d152f62so6761675e87.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Aug 2023 00:07:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691392064; x=1691996864;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cWWnXKOt1mBeIEynylWCqyYZNRdvBS5hxgZ4awLikYQ=;
 b=LFFEIflEjKGennqFfU8wVXkI40uvZ7ywtxnN2ZIW1OQ9YzrK+ToagXs2LrO6m8XuvJ
 /C1ZkB59H8xn955YgWEuNdHb4wcAdHMNuQ4jxQq7GQk+wZOT4txcv7Wz3oT6fHS1guxR
 9uT+kZuaqbvqPLwSPXrK4KX8k2t+wi9ZD1XvIhcd0W18N3PiPIn89VfCmSJSj0w+hzpe
 Ik1qstQgHQCZiC3gv+22+Xn9inBsLFcsCqdxNdNvPfcrLdbldO5M7wok4tfRDvxV/oke
 XkQSF0N1yTOFgFNbo3I9n7RlG1sBMXgru5FwAQ+KgrYzcS9ncU3dbAub44To02zn3MnB
 nTpQ==
X-Gm-Message-State: AOJu0YyvnRpWYg3z8mF/qqSxdfvQdD/jr2EvevlvSwm46gKnAyndvWg/
 32yhu1QPKOLm7POeKTwXyxwd3g==
X-Google-Smtp-Source: AGHT+IHqu92CAl5eucjDnqV8FrzoalX0QSA+DPma7ktAhbEBbnPB9ME04dfagA2jYn4ZmDIGK40XTw==
X-Received: by 2002:a05:6512:108b:b0:4fb:8bfd:32e4 with SMTP id
 j11-20020a056512108b00b004fb8bfd32e4mr5637893lfg.13.1691392063541; 
 Mon, 07 Aug 2023 00:07:43 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 u3-20020adfed43000000b0031759e6b43fsm9531115wro.39.2023.08.07.00.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Aug 2023 00:07:42 -0700 (PDT)
Date: Mon, 7 Aug 2023 09:07:41 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZNCYPVX7p9Fe/lPY@nanopsycho>
References: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
 <20230804190454.394062-8-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230804190454.394062-8-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1691392064; x=1691996864; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cWWnXKOt1mBeIEynylWCqyYZNRdvBS5hxgZ4awLikYQ=;
 b=ZP2rNYEzKbJiw4/twCr06gCfoDpq1kXEI6dvZvET6awgzhG2NFhu6iJh6DPYZOiSd+
 G65bI+0KemUsir2VCkGUiYsUnCrFBCQU7G9OO6XRwMZv+uTUITopgzAEseibWMrusxmw
 0H2daFCmx0/bKK1kZmVFQO8Lse9Ru11dNVj4bIxT5MovDHvOFOCfT40GcZKt8ysiwBGd
 C4UcSOCx5grh0r5U8dS/ebAG6CoGAU42FWq0VRF3cmn6WetA332g7r2eqRbkszi2SMpV
 0VDM5rsXnpc0n3awdyb0FS+ggO6wYAUXnLi/Yszv22vnrJ/YOUa/gjVIiuXIwtdvzlJY
 nOJg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=ZP2rNYEz
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 7/9] ice: implement dpll
 interface to control cgu
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
Cc: Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 04, 2023 at 09:04:52PM CEST, vadim.fedorenko@linux.dev wrote:
>From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

[...]


>+/**
>+ * ice_dpll_deinit_worker - deinitialize dpll kworker
>+ * @pf: board private structure
>+ *
>+ * Stop dpll's kworker, release it's resources.
>+ */
>+static void ice_dpll_deinit_worker(struct ice_pf *pf)
>+{
>+	struct ice_dplls *d = &pf->dplls;
>+
>+	kthread_cancel_delayed_work_sync(&d->work);
>+	kthread_destroy_worker(d->kworker);
>+}
>+
>+/**
>+ * ice_dpll_init_worker - Initialize DPLLs periodic worker
>+ * @pf: board private structure
>+ *
>+ * Create and start DPLLs periodic worker.
>+ *
>+ * Context: Shall be called after pf->dplls.lock is initialized and
>+ * ICE_FLAG_DPLL flag is set.
>+ * Return:
>+ * * 0 - success
>+ * * negative - create worker failure
>+ */
>+static int ice_dpll_init_worker(struct ice_pf *pf)
>+{
>+	struct ice_dplls *d = &pf->dplls;
>+	struct kthread_worker *kworker;
>+
>+	ice_dpll_update_state(pf, &d->eec, true);
>+	ice_dpll_update_state(pf, &d->pps, true);
>+	kthread_init_delayed_work(&d->work, ice_dpll_periodic_work);
>+	kworker = kthread_create_worker(0, "ice-dplls-%s",
>+					dev_name(ice_pf_to_dev(pf)));
>+	if (IS_ERR(kworker))
>+		return PTR_ERR(kworker);
>+	d->kworker = kworker;
>+	d->cgu_state_acq_err_num = 0;
>+	kthread_queue_delayed_work(d->kworker, &d->work, 0);
>+
>+	return 0;
>+}
>+

[...]


>+/**
>+ * ice_dpll_deinit - Disable the driver/HW support for dpll subsystem
>+ * the dpll device.
>+ * @pf: board private structure
>+ *
>+ * Handles the cleanup work required after dpll initialization, freeing
>+ * resources and unregistering the dpll, pin and all resources used for
>+ * handling them.
>+ *
>+ * Context: Destroys pf->dplls.lock mutex.
>+ */
>+void ice_dpll_deinit(struct ice_pf *pf)
>+{
>+	bool cgu = ice_is_feature_supported(pf, ICE_F_CGU);
>+
>+	if (!test_bit(ICE_FLAG_DPLL, pf->flags))
>+		return;
>+	clear_bit(ICE_FLAG_DPLL, pf->flags);
>+

Please be symmetric with the init path and move ice_dpll_deinit_worker()
call here.

That would not only lead to nicer code, also, that will assure that the
worker thread can only access initialized object.

And as:
1) worked thread can only access initialized objects
2) dpll callbacks can only be called on initialized and registered objects

You can remove the check for ICE_FLAG_DPLL flag from ice_dpll_cb_lock()
as there would be no longer any possibility when this check could be
evaluated as "true".

Then, as an unexpected side effect (:O), ice_dpll_cb_lock() basically
reduces to just calling mutex_lock(&pf->dplls.lock). So you can remove
the thin wrappers of ice_dpll_cb_lock() and ice_dpll_cb_unlock() and
instead of doing this obfuscation, you can call
mutex_lock(&pf->dplls.lock) and mutex_unlock(&pf->dplls.lock) directly.

That is what I'm trying to explain from the beginning. Is it clear now
or do we need another iteration?

Thanks!


>+	ice_dpll_deinit_pins(pf, cgu);
>+	ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
>+	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
>+	ice_dpll_deinit_info(pf);
>+	if (cgu)
>+		ice_dpll_deinit_worker(pf);
>+	mutex_destroy(&pf->dplls.lock);
>+}
>+
>+/**
>+ * ice_dpll_init - initialize support for dpll subsystem
>+ * @pf: board private structure
>+ *
>+ * Set up the device dplls, register them and pins connected within Linux dpll
>+ * subsystem. Allow userspace to obtain state of DPLL and handling of DPLL
>+ * configuration requests.
>+ *
>+ * Context: Initializes pf->dplls.lock mutex.
>+ */
>+void ice_dpll_init(struct ice_pf *pf)
>+{
>+	bool cgu = ice_is_feature_supported(pf, ICE_F_CGU);
>+	struct ice_dplls *d = &pf->dplls;
>+	int err = 0;
>+
>+	err = ice_dpll_init_info(pf, cgu);
>+	if (err)
>+		goto err_exit;
>+	err = ice_dpll_init_dpll(pf, &pf->dplls.eec, cgu, DPLL_TYPE_EEC);
>+	if (err)
>+		goto deinit_info;
>+	err = ice_dpll_init_dpll(pf, &pf->dplls.pps, cgu, DPLL_TYPE_PPS);
>+	if (err)
>+		goto deinit_eec;
>+	err = ice_dpll_init_pins(pf, cgu);
>+	if (err)
>+		goto deinit_pps;
>+	mutex_init(&d->lock);
>+	set_bit(ICE_FLAG_DPLL, pf->flags);

Why can't you move the flag set to the end of this function and avoid
calling clear_bi on the error path?

If you can't, please fix the clear_bit() position (should be at the
beginning of deinit_pins label section).


>+	if (cgu) {
>+		err = ice_dpll_init_worker(pf);
>+		if (err)
>+			goto deinit_pins;
>+	}
>+
>+	return;
>+
>+deinit_pins:
>+	ice_dpll_deinit_pins(pf, cgu);
>+deinit_pps:
>+	ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
>+deinit_eec:
>+	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
>+deinit_info:
>+	ice_dpll_deinit_info(pf);
>+err_exit:
>+	clear_bit(ICE_FLAG_DPLL, pf->flags);
>+	mutex_destroy(&d->lock);
>+	dev_warn(ice_pf_to_dev(pf), "DPLLs init failure err:%d\n", err);
>+}

[...]


>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index 2e80d5cd9f56..4adc74f1cb1f 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -4627,6 +4627,10 @@ static void ice_init_features(struct ice_pf *pf)
> 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
> 		ice_gnss_init(pf);
> 
>+	if (ice_is_feature_supported(pf, ICE_F_CGU) ||
>+	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
>+		ice_dpll_init(pf);
>+
> 	/* Note: Flow director init failure is non-fatal to load */
> 	if (ice_init_fdir(pf))
> 		dev_err(dev, "could not initialize flow director\n");
>@@ -4653,6 +4657,9 @@ static void ice_deinit_features(struct ice_pf *pf)
> 		ice_gnss_exit(pf);
> 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
> 		ice_ptp_release(pf);
>+	if (ice_is_feature_supported(pf, ICE_F_PHY_RCLK) ||
>+	    ice_is_feature_supported(pf, ICE_F_CGU))

As you internally depend on ICE_FLAG_DPLL flag, this check is redundant. 


>+		ice_dpll_deinit(pf);
> }
> 
> static void ice_init_wakeup(struct ice_pf *pf)
>-- 
>2.27.0
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
