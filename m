Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF455838B4C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 11:00:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD3EC4191B;
	Tue, 23 Jan 2024 10:00:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD3EC4191B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706004054;
	bh=m5AmHTVjwI65aD0UFgF9rkeYGIGw3SaAq2t9L2ZTehs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rfXMZlHDbkuN7mujPGW+D3PLzdmh2NQsRLHaW99ZaGfo//ImNnZ52OVruhfVK/RMw
	 P6kcF8N4c54HBkA2Nd2Dqyect2akNFC6c14+LysT3o4ODd4vx8ptIlUTGZRN62NpyQ
	 zchBTKnwknv0QpKEK24VYpuxrjOFbigBa+HxFiE7nc6Uh02WHoBIRtQUkSEp1Uo0R/
	 Pd03+ELrq5rMKlvlmicASjYplpomft662qoDQQ1LuOgnWnNYdK0Gpw3cf7zAxhsmrL
	 fe4FWB5CB9iSD3TZhpA1coNutVLMUxnOofWwlUP2ze2JWHFNTEQfvz3aN0dw6ieA3h
	 slQ/lshvHu7MA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TRONwMfiFYXD; Tue, 23 Jan 2024 10:00:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF555417DC;
	Tue, 23 Jan 2024 10:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF555417DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C56C1BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3434B82C3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:00:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3434B82C3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0u-s_BWpUp5P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 10:00:48 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B91D82C33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:00:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B91D82C33
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-40e800461baso49235305e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 02:00:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706004046; x=1706608846;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=m5AmHTVjwI65aD0UFgF9rkeYGIGw3SaAq2t9L2ZTehs=;
 b=xJZDFfkC8wKEz9Xjai/3XgiOLy5vTvO/7o3VIxpsOSEqnYlTcwhOEennwlXWkssy8w
 vedo9qh9VD8pc1sY9fFlGWnfnrjc/LPgL/y/ZlaHUliox3fh5K/SA/D0tDoxQmTLXK/8
 f9qR70j0psMxhIPKq/gVhsSt42YPF3LNd1xBC8fRH55B/pWEL4eC9VJEX02irsMCIvap
 P5zJpyxKCFWRDKWnxdoTHQTqXyMleicPnCqOehmcNR3QxpiD8GUrPqN+AWZx2oE4pPr1
 2AoLZICPSw+evG8JVXlevAuSRdqpSLzUhMqCoeP+5eLIXfL9sasOdqhITD5go0Y1Oagn
 Zq8Q==
X-Gm-Message-State: AOJu0Yy2NZxB4baa4FaH9SgcOAqDRRNtOHrm0gME6Qp0wHmFTfUZXjZV
 yOB8ETpuD/gT/9XfMaSqnIpvr3iz2o7UfkDrTBBlMUZC67KMd8Ta06C8b2Lw2BA=
X-Google-Smtp-Source: AGHT+IGgDYptKEZchMrhzTFzd5vLfuVy95HZLRDi5FmwD8hKKzybk2+Mwj2Th6lDzW7YEuw/ukS7lw==
X-Received: by 2002:a05:600c:1d2a:b0:40e:676c:33e5 with SMTP id
 l42-20020a05600c1d2a00b0040e676c33e5mr212056wms.79.1706004046186; 
 Tue, 23 Jan 2024 02:00:46 -0800 (PST)
Received: from localhost ([102.140.209.237]) by smtp.gmail.com with ESMTPSA id
 bg42-20020a05600c3caa00b0040e3733a32bsm45398427wmb.41.2024.01.23.02.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jan 2024 02:00:45 -0800 (PST)
Date: Tue, 23 Jan 2024 13:00:42 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: arkadiusz.kubalewski@intel.com
Message-ID: <8207875d-b047-4e55-a5a3-bd6f6f9b7d7d@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1706004046; x=1706608846; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=m5AmHTVjwI65aD0UFgF9rkeYGIGw3SaAq2t9L2ZTehs=;
 b=SbFdOCdvmqWVPqmOMq9TblsGOlLr/o34z6gE7UvIjNDwAaIbFUzOtaRJZzkgesX2zg
 oUq2YZwrijVr97KcsGgN9mQ1B8KnujilNDKwSJSC2Sp3O2GWiSscA5shZAICLMZa1yJE
 06ME/r4rJaQIbq/PNqtl+p6O0tI1ZdGyp8cDhc6Lt9jSc3PFYm7dT82IjAKVgoz/SKHO
 WeyrYJh+EnNJGYYLeR8c+r1oRkbsDVnjFDyGYfewdbw4t0aqnnog54xfCPFWoIv5Y/i8
 XPHGjeoDBe6cYJB143Qt1e/wAOhmniwGAk/P/cBGMa5KGFwV9CGjW3fqwk3SBPsY8Dzq
 PxEw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=SbFdOCdv
Subject: [Intel-wired-lan] [bug report] ice: implement dpll interface to
 control cgu
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Arkadiusz Kubalewski,

The patch d7999f5ea64b: "ice: implement dpll interface to control
cgu" from Sep 13, 2023 (linux-next), leads to the following Smatch
static checker warning:

	drivers/net/ethernet/intel/ice/ice_dpll.c:1590 ice_dpll_init_rclk_pins()
	warn: inconsistent refcounting 'pf->dplls.rclk.pin->refcount.refs.counter':

drivers/net/ethernet/intel/ice/ice_dpll.c
    1554 static int
    1555 ice_dpll_init_rclk_pins(struct ice_pf *pf, struct ice_dpll_pin *pin,
    1556                         int start_idx, const struct dpll_pin_ops *ops)
    1557 {
    1558         struct ice_vsi *vsi = ice_get_main_vsi(pf);
    1559         struct dpll_pin *parent;
    1560         int ret, i;
    1561 
    1562         ret = ice_dpll_get_pins(pf, pin, start_idx, ICE_DPLL_RCLK_NUM_PER_PF,
    1563                                 pf->dplls.clock_id);
    1564         if (ret)
    1565                 return ret;
    1566         for (i = 0; i < pf->dplls.rclk.num_parents; i++) {
    1567                 parent = pf->dplls.inputs[pf->dplls.rclk.parent_idx[i]].pin;
    1568                 if (!parent) {
    1569                         ret = -ENODEV;
    1570                         goto unregister_pins;
    1571                 }
    1572                 ret = dpll_pin_on_pin_register(parent, pf->dplls.rclk.pin,
    1573                                                ops, &pf->dplls.rclk);
    1574                 if (ret)
    1575                         goto unregister_pins;
    1576         }
    1577         if (WARN_ON((!vsi || !vsi->netdev)))
    1578                 return -EINVAL;

goto unregister_pins?

    1579         netdev_dpll_pin_set(vsi->netdev, pf->dplls.rclk.pin);
    1580 
    1581         return 0;
    1582 
    1583 unregister_pins:
    1584         while (i) {
    1585                 parent = pf->dplls.inputs[pf->dplls.rclk.parent_idx[--i]].pin;
    1586                 dpll_pin_on_pin_unregister(parent, pf->dplls.rclk.pin,
    1587                                            &ice_dpll_rclk_ops, &pf->dplls.rclk);
    1588         }
    1589         ice_dpll_release_pins(pin, ICE_DPLL_RCLK_NUM_PER_PF);
--> 1590         return ret;
    1591 }

regards,
dan carpenter
