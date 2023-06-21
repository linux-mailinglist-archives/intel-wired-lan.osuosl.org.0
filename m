Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8437383C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 14:28:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 862B78145A;
	Wed, 21 Jun 2023 12:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 862B78145A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687350531;
	bh=BepU+lZ9yaYeZkWjVe5qEnQWqjohTMCLlX1bHRDWYKE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PkzLaIE750FvyNxViY493SN1K6K9QasyIJwuWM6Xay4Axk4zFpgz4mPusDx1JxQnD
	 DFSvmRBVcVPlB8vAFjSMJIVfbT/O4oUviZkzbN3ooisD2TjuC7HLuZFCsNwjN/iD3C
	 gktYcRfW3byEwUWAMYBe9cnRpBCiHx6UEQRxUbgrCmLTjZJJbRCr7IhmYuf4P76lJM
	 xSubQ02OGePbTHyo2KREbO+t1iHxmaAzJpIDHl+s3s8TWzV7FgGzcpLSEiwLuBB37x
	 vULQ+lb8okCB2e9qTHt5aMlqobOs771smwvfIdR1TNfT9we74NT/uL+ZuB1RGjSZcF
	 Aq6tNcl6X//yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-6Kk6PDXOPG; Wed, 21 Jun 2023 12:28:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB126813EB;
	Wed, 21 Jun 2023 12:28:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB126813EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2337A1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 12:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF50360A82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 12:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF50360A82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IpUrS_y8MtKK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 12:28:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE26E60A7D
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE26E60A7D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 12:28:42 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-3f9189228bcso33689495e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 05:28:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687350520; x=1689942520;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JY6qu40VU0iOU+uQjSN/rpx66RGcpmW4WoflmnS71Xs=;
 b=QqJUHOXjs2YPN/PbNI9YuEb6w+jTXg2WN13qh8W/eTsNWF5np2XYqQ97YLqSt+a8Sg
 lrgjmd2Czfr5OMMKHFTkwfd3JC4IvO/PaZ12sEzOlLhfJOuuMQSvxWcTWyVQMdyi9lQt
 HxUwpzYo0dJJpWiBgSwBPKS1k6Eb8+OwIRQyyP8TatLztE0lsy47yCR5BM++qJAuE0Kp
 iA6DTZ3QEiY/azMdjiH2e/Ywp9MawlbmIOi0FHZcyq2ROAV/GcL+DGfY2BnK/V9Fvgid
 KWmsfYSg5v042CFcSNMdZ9UFT/AZqWG69ZWWpblBfHCD/0doq7RjNYDroTn+qgA0JlO7
 e4kA==
X-Gm-Message-State: AC+VfDzIBoAOvm8/E6/OTSa0oK7HiOv3ud7CnKJxkWVBo1UzVNYi4q9l
 AYLddy8kktImHfxP6r/mAZSHpw==
X-Google-Smtp-Source: ACHHUZ60rXBng2He7vOU89dbQRdYFpRJqDtQ+N0XHlr2RIF8GRtfIJ4xQCwrAe/ejPJeeSMNSO3pmQ==
X-Received: by 2002:a05:600c:2315:b0:3f9:b02:9103 with SMTP id
 21-20020a05600c231500b003f90b029103mr6786163wmo.29.1687350520103; 
 Wed, 21 Jun 2023 05:28:40 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 9-20020a05600c240900b003f93c450657sm4835029wmp.38.2023.06.21.05.28.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 05:28:39 -0700 (PDT)
Date: Wed, 21 Jun 2023 14:28:38 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZJLs9np6CgKOtrWN@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-9-arkadiusz.kubalewski@intel.com>
 <ZIRI+/YDZMQJVs3i@nanopsycho>
 <DM6PR11MB4657C07B0DA46408BDD957CD9B5FA@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657C07B0DA46408BDD957CD9B5FA@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687350520; x=1689942520; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JY6qu40VU0iOU+uQjSN/rpx66RGcpmW4WoflmnS71Xs=;
 b=QJYEvSQGMsdga3Sw+LEwbmfVCv51FFTfe+zTbbvvLwPUJ0LE4ezg0a9FAPbbtvS79j
 ldxilCxXfk/qb7MqAy+ESNd212YZxzqu3oycOTPossmGxj/+Lb2eOqOOf9lcPEMGXAEN
 PiEYqFDWetWK8ZfRYfrmZm/9P89sNnGCcrKh+GQE86nDsP6EGdk29TuwFXKUxE/dT5c4
 kUzlr7iP+NMAGevxrG3+JX0+3jlshbVy1oEq1ZHpEdLRStJDOrBcIv/hLMaGbpLbE0oh
 XBXCRXJpf4jxbClgVqR/q8D15/odn7mAE5hds9N3YLjCa841c6Sp0r20lDZIHsSQdQ6S
 NwWg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=QJYEvSQG
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 08/10] ice: implement dpll
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Jun 19, 2023 at 08:08:11PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Saturday, June 10, 2023 11:57 AM
>>
>>Fri, Jun 09, 2023 at 02:18:51PM CEST, arkadiusz.kubalewski@intel.com wrote:

[...]


>>>+/**
>>>+ * ice_dpll_cb_lock - lock dplls mutex in callback context
>>>+ * @pf: private board structure
>>>+ *
>>>+ * Lock the mutex from the callback operations invoked by dpll subsystem.
>>>+ * Prevent dead lock caused by `rmmod ice` when dpll callbacks are under
>>>stress
>>
>>"dead lock", really? Which one? Didn't you want to write "livelock"?
>>
>
>As explained, rmmod takes and destroys lock, it can happen that
>netlink request/ops hangs on trying to lock when rmmod started deinit.

Yeah, don't take the lock in rmmod, see below.


>
>>If this is livelock prevention, is this something you really see or
>>just an assumption? Seems to me unlikely.
>>
>>Plus, see my note in ice_dpll_init(). If you remove taking the lock from
>>ice_dpll_init() and ice_dpll_deinit(), do you still need this? I don't
>>think so.
>>
>
>I won't remove it from there, as the lock shall serialize the access to ice dpll
>data, so it must be held on init until everything is ready for netlink access,

Before you register the dpll device/pin, no netlink cmd can happen. So
do whatever you want in the init, no lock needed, register at the and
when you are ready. Same on deinit. After you unregister, no call can
happen, no need to lock anything in deinit.

Either I'm missing something really odd, or your locking scheme is very
wrong.

If this locking here is needed, could you please present an example of a
race it solves here?



>or when deinit takes place, until everything is released.
>
>>
>>>+ * tests.
>>>+ *
>>>+ * Return:
>>>+ * 0 - if lock acquired
>>>+ * negative - lock not acquired or dpll was deinitialized
>>>+ */
>>>+static int ice_dpll_cb_lock(struct ice_pf *pf)
>>>+{
>>>+	int i;
>>>+
>>>+	for (i = 0; i < ICE_DPLL_LOCK_TRIES; i++) {
>>>+		if (mutex_trylock(&pf->dplls.lock))
>>>+			return 0;
>>>+		usleep_range(100, 150);
>>>+		if (!test_bit(ICE_FLAG_DPLL, pf->flags))
>>
>>How exactly could this happen? I don't think it can. Drop it.
>>
>
>Asynchronously called deinit, and kworker tries to update at the same time.

Could you provide an example please?
Because I see 2 possible paths:
1) dpll op call
2) periodic work

But when ICE_FLAG_DPLL is cleared in ice_dpll_deinit(), no dpll op call
can happen anymore and no periodic work is scheduled.

Is this another "just in case" situation? If yes, please remove.
If no, please provide an example of a race this solves.


>
>>
>>>+			return -EFAULT;
>>>+	}
>>>+
>>>+	return -EBUSY;
>>>+}

[...]


>>>+static void ice_dpll_periodic_work(struct kthread_work *work)
>>>+{
>>>+	struct ice_dplls *d = container_of(work, struct ice_dplls,
>>>work.work);
>>>+	struct ice_pf *pf = container_of(d, struct ice_pf, dplls);
>>>+	struct ice_dpll *de = &pf->dplls.eec;
>>>+	struct ice_dpll *dp = &pf->dplls.pps;
>>>+	int ret = 0;
>>>+
>>>+	if (!test_bit(ICE_FLAG_DPLL, pf->flags))
>>
>>How exactly could this happen? I don't think it can. Drop it.
>>
>
>I will change a bit here, ice_dpll_cb_lock returns an error
>if that flag was already down, so will use it instead.

Yeah, I believe that this simply cannot happen as when the bit is
cleared, no work is scheduled anymore. See above.


>
>>
>>>+		return;
>>>+	ret = ice_dpll_cb_lock(pf);
>>>+	if (ret) {
>>>+		d->lock_err_num++;
>>

[...]


>
>>>+		mutex_lock(&pf->dplls.lock);
>>
>>Related to my question in ice_dpll_init(), why do you need to lock the
>>mutex
>>here?
>
>Because before deinit takes place on driver unload the user can still ask
>for the info from the dpll subsystem or kworker can try to alter the status.

When you unregister dpll and stop the kworker, you can't see anything
like that. No need to take this lock.


>
>>
>>
>>>+		ice_dpll_deinit_pins(pf, cgu);
>>>+		ice_dpll_deinit_info(pf);
>>>+		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
>>>+		ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
>>
>>Please reorder to match error path in ice_dpll_init()
>>
>
>Fixed.
>
>>>+		if (cgu)
>>
>>In ice_dpll_init() you call this "cgu_present". Please be consistent in
>>naming.
>>
>
>Fixed.
>
>>
>>>+			ice_dpll_deinit_worker(pf);
>>>+		clear_bit(ICE_FLAG_DPLL, pf->flags);
>>>+		mutex_unlock(&pf->dplls.lock);
>>>+		mutex_destroy(&pf->dplls.lock);
>>>+	}
>>>+}
>>>+
>>>+/**
>>>+ * ice_dpll_init_info_direct_pins - initializes direct pins info
>>>+ * @pf: board private structure
>>>+ * @pin_type: type of pins being initialized
>>>+ *
>>>+ * Init information for directly connected pins, cache them in pf's pins
>>>+ * structures.
>>>+ *
>>>+ * Context: Function initializes and holds pf->dplls.lock mutex.
>>>+ * Return:
>>>+ * * 0 - success
>>>+ * * negative - init failure reason
>>>+ */
>>>+static int
>>>+ice_dpll_init_info_direct_pins(struct ice_pf *pf,
>>>+			       enum ice_dpll_pin_type pin_type)
>>>+{
>>>+	struct ice_dpll *de = &pf->dplls.eec, *dp = &pf->dplls.pps;
>>>+	int num_pins, i, ret = -EINVAL;
>>>+	struct ice_hw *hw = &pf->hw;
>>>+	struct ice_dpll_pin *pins;
>>>+	u8 freq_supp_num;
>>>+	bool input;
>>>+
>>>+	switch (pin_type) {
>>>+	case ICE_DPLL_PIN_TYPE_INPUT:
>>>+		pins = pf->dplls.inputs;
>>>+		num_pins = pf->dplls.num_inputs;
>>>+		input = true;
>>>+		break;
>>>+	case ICE_DPLL_PIN_TYPE_OUTPUT:
>>>+		pins = pf->dplls.outputs;
>>>+		num_pins = pf->dplls.num_outputs;
>>>+		input = false;
>>>+		break;
>>>+	default:
>>>+		return ret;
>>>+	}
>>>+
>>>+	for (i = 0; i < num_pins; i++) {
>>>+		pins[i].idx = i;
>>>+		pins[i].prop.board_label = ice_cgu_get_pin_name(hw, i, input);
>>>+		pins[i].prop.type = ice_cgu_get_pin_type(hw, i, input);
>>>+		if (input) {
>>>+			ret = ice_aq_get_cgu_ref_prio(hw, de->dpll_idx, i,
>>>+						      &de->input_prio[i]);
>>>+			if (ret)
>>>+				return ret;
>>>+			ret = ice_aq_get_cgu_ref_prio(hw, dp->dpll_idx, i,
>>>+						      &dp->input_prio[i]);
>>>+			if (ret)
>>>+				return ret;
>>>+			pins[i].prop.capabilities |=
>>>+				DPLL_PIN_CAPS_PRIORITY_CAN_CHANGE;
>>>+		}
>>>+		pins[i].prop.capabilities |= DPLL_PIN_CAPS_STATE_CAN_CHANGE;
>>>+		ret = ice_dpll_pin_state_update(pf, &pins[i], pin_type);
>>>+		if (ret)
>>>+			return ret;
>>>+		pins[i].prop.freq_supported =
>>>+			ice_cgu_get_pin_freq_supp(hw, i, input, &freq_supp_num);
>>>+		pins[i].prop.freq_supported_num = freq_supp_num;
>>>+		pins[i].pf = pf;
>>>+	}
>>>+
>>>+	return ret;
>>>+}
>>>+
>>>+/**
>>>+ * ice_dpll_init_rclk_pin - initializes rclk pin information
>>>+ * @pf: board private structure
>>>+ * @pin_type: type of pins being initialized
>>>+ *
>>>+ * Init information for rclk pin, cache them in pf->dplls.rclk.
>>>+ *
>>>+ * Return:
>>>+ * * 0 - success
>>>+ * * negative - init failure reason
>>>+ */
>>>+static int ice_dpll_init_rclk_pin(struct ice_pf *pf)
>>>+{
>>>+	struct ice_dpll_pin *pin = &pf->dplls.rclk;
>>>+	struct device *dev = ice_pf_to_dev(pf);
>>>+
>>>+	pin->prop.board_label = dev_name(dev);
>>
>>What??? Must be some sort of joke, correct?
>>"board_label" should be an actual writing on a board. For syncE, I don't
>>think it makes sense to fill any label. The connection to the netdev
>>should be enough. That is what I do in mlx5.
>>
>>Please drop this.
>>
>
>No, we want a label, as this is recovered clock, will change it to

Okay, so it is recovered clock, so what? I want a lot of things, that
does not make them meaningful.


>package_label but the name will stay for now, this is much more meaningful
>then i.e. "phy0" or "RCLK".

No, dev_name() here is total non-sense!
The label should contain the actual label as for example a writing on a
front panel, board, etc.

Why exactly do you need this? Why a link from netdev to this dpll pin is
not enough for you.

Please describe exactly what you need the label for. Usecases, examples,
etc.

Jakub, if you read this, this is very nice example of a misuse that even
very precisely defined netlink attribute cannot prevent :/


>
>>
>>
>>>+	pin->prop.type = DPLL_PIN_TYPE_SYNCE_ETH_PORT;
>>>+	pin->prop.capabilities |= DPLL_PIN_CAPS_STATE_CAN_CHANGE;
>>>+	pin->pf = pf;
>>>+

[...]


>>>+int ice_dpll_init(struct ice_pf *pf)
>>>+{
>>>+	bool cgu_present = ice_is_feature_supported(pf, ICE_F_CGU);
>>>+	struct ice_dplls *d = &pf->dplls;
>>>+	int err = 0;
>>>+
>>>+	mutex_init(&d->lock);
>>>+	mutex_lock(&d->lock);
>>
>>Seeing pattern like this always triggers questions.
>>Why exactly do you need to lock the mutex here?
>>
>
>Could do it few lines below before the dplls are inited,
>but this would make error path confusing.

See above, you don't need to do this if you register dpll and start the
periodic work only after everything is ready. I believe that you
actually have it like this now.


>
>>
>>>+	err = ice_dpll_init_info(pf, cgu_present);
>>>+	if (err)
>>>+		goto err_exit;
>>>+	err = ice_dpll_init_dpll(pf, &pf->dplls.eec, cgu_present,
>>>+				 DPLL_TYPE_EEC);
>>>+	if (err)
>>>+		goto deinit_info;
>>>+	err = ice_dpll_init_dpll(pf, &pf->dplls.pps, cgu_present,
>>>+				 DPLL_TYPE_PPS);
>>>+	if (err)
>>>+		goto deinit_eec;
>>>+	err = ice_dpll_init_pins(pf, cgu_present);
>>>+	if (err)
>>>+		goto deinit_pps;
>>>+	set_bit(ICE_FLAG_DPLL, pf->flags);
>>>+	if (cgu_present) {
>>>+		err = ice_dpll_init_worker(pf);
>>>+		if (err)
>>>+			goto deinit_pins;
>>>+	}
>>>+	mutex_unlock(&d->lock);
>>>+	dev_info(ice_pf_to_dev(pf), "DPLLs init successful\n");
>>
>>What is this good for? Please avoid polluting dmesg and drop this.
>>
>
>Sure, removed.
>
>>
>>>+
>>>+	return err;
>>>+
>>>+deinit_pins:
>>>+	ice_dpll_deinit_pins(pf, cgu_present);
>>>+deinit_pps:
>>>+	ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu_present);
>>>+deinit_eec:
>>>+	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu_present);
>>>+deinit_info:
>>>+	ice_dpll_deinit_info(pf);
>>>+err_exit:
>>>+	clear_bit(ICE_FLAG_DPLL, pf->flags);
>>>+	mutex_unlock(&d->lock);
>>>+	mutex_destroy(&d->lock);
>>>+	dev_warn(ice_pf_to_dev(pf), "DPLLs init failure err:\n");
>>
>>You are missing the err. But why do you need the message?
>>
>
>To give a clue that something went wrong on dpll init.

Yeah, you ignore the err in the caller. That makes sense.
Don't forget to add the "err" :)


>
>>
>>>+
>>>+	return err;


[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
