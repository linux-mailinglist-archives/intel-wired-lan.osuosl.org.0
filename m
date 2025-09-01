Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DB1B3E211
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 13:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2566F405FA;
	Mon,  1 Sep 2025 11:52:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Apprx_JNEvtk; Mon,  1 Sep 2025 11:52:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9440B4043A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756727551;
	bh=ufTT71gJOeWNRgonKEjNREjxphgaPsy5NyeCRAt0ZAY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MQPF0MM90MF2dVdvkhdzg2I8RvJOwlkl48PUubKXhHk5eKKHxzJzLDE5n/8rp9TWX
	 YHjmoWLRZEuzRxpN6s01/7yk+WV8F+OworGHCRWhU/Cx7aPUrpCnuccfpSgW+wdEZ2
	 BSU/Ph8qXiDZEro73WNtMXAHGqVsgWHtSGOe3raOqpw68PSmExjGfiLEkQrliaG4sR
	 6i0st7fr3CTQpEhNXQFvI9Tcggd9Hp5E9aIzetU5ATuRG95RyMhmMNoT/4mkUmmJva
	 mZktiB3LIqrZ6yR4JXLmQHX01l13itf3jd/pIBWUNZq3YSmfx2lfhG+ljIxxghXBx4
	 6yw3k0Z+dD5Ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9440B4043A;
	Mon,  1 Sep 2025 11:52:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C27E10E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 11:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 25EB840479
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 11:52:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gsxQNtwtShnc for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 11:52:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00F8340430
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00F8340430
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00F8340430
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 11:52:28 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-45b8e28b3c5so4466455e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Sep 2025 04:52:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756727547; x=1757332347;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ufTT71gJOeWNRgonKEjNREjxphgaPsy5NyeCRAt0ZAY=;
 b=DuAGwsTaAvLgmJXIEhupEHpYLTN7So5FzYS6VE/KjLcgc+a5DN7P9QiPtGKrdUoGGk
 bCaenNka3kld8WrhwYbTuJFqP5EzxyDFab58UlSjzFwv7IMtDPo9ZhvOX3XP4pnJ0AOI
 6AMBWbps2Z0qXg6o+RCknEXDtLImmswlkvSfArRTZyLbqPKr+L5Dg2WAIqyfCtuIfEJS
 jIN3aG2iS7oo2Kz3QIE5e+ytilh5EHVRSbEfprI7mOtv8kcYLASHB7oFh+DspTk9VgLO
 bKJ3wRteijGfoL9J8NTKqr9uHnvRJxtpAl50XpMIkEYX40de7lDqdyUbb4LkHwfbuHUG
 3IiQ==
X-Gm-Message-State: AOJu0Ywbe4E6J8EwSpkS+LUH5KqJ+OC1o5awYIEsSBoNezKTz9TyUctP
 WhVOmLYssIEodkaoxiGAGjnR9u1IJpxDzd5faolh5M/zVvFxVMHD9LSRIUMrQqYv0G0=
X-Gm-Gg: ASbGncs/MUyeF8lWOyLvIUCXf7j1ZisOEnQHWmMolc9ooDy8krBucVJOmhggRGgP0QA
 5sN7ts3l446N1+a8HiRLi1I8CisYRffaJqvzGoNFNVP9BQtMNUdMyuh0n1pouRaunaWsJKrMQYS
 JlgA3yb4jMRmDE2CXTKXPhFkMzR0oIppsvWfnwICVg7pKaM9xSghL0/5glMeWg78EL02dq3mh1v
 WEouu5XOx8Yhewsw4jZ/HzTNnNWlGpRLKxcq1QHjZFZdufVvDSQ5kDMOxcjo5EpaLoVEwxzQh7M
 glDGtOdN9VbTpXbDuhJPqzzZm5HWjK6j06Fk1fEydi+Mk27fmCnMTNZqqRfpO2kyqE+OULi5DAw
 wzr4Zlth7gLPlX7GS+KVYA3y8p8A=
X-Google-Smtp-Source: AGHT+IH5MWq4eyXxBf9LwDxPZyzCa+MMakEsWsgDm1jLlQ1rb6NsaGJ0si5fPpb7KVU8z3hAHDKUgQ==
X-Received: by 2002:a05:600d:1c:b0:45b:8b95:7119 with SMTP id
 5b1f17b1804b1-45b8b957228mr34734775e9.8.1756727546746; 
 Mon, 01 Sep 2025 04:52:26 -0700 (PDT)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b87abc740sm87201005e9.7.2025.09.01.04.52.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Sep 2025 04:52:26 -0700 (PDT)
Date: Mon, 1 Sep 2025 14:52:22 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Qi Zhang <qi.z.zhang@intel.com>
Message-ID: <aLWI9lTXHdRkF3T3@stanley.mountain>
References: <aLVix68cQNQr4CC8@stanley.mountain>
 <412ac86c-583f-4952-9723-d0c8b7fe2566@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <412ac86c-583f-4952-9723-d0c8b7fe2566@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1756727547; x=1757332347; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ufTT71gJOeWNRgonKEjNREjxphgaPsy5NyeCRAt0ZAY=;
 b=hJw1o2wy7DOPFx/p2tIRNJJHXU5oa8bgBKtiXx4sghRCbNtrQ3/reRwP7HUWoCpSsP
 vwNiaX218yMY02WpX32MIYc//PHE0nbLNsvCD1DzO4rca6kjWKrEKOZ9zWOesbiRzHRi
 9K2nmZ7YMtLqmtXSghr7QNEsHl82cL55A5oKt7kY0im66CKMIc5o/yfI3XOc6yQ6kqxq
 jUenUQtzCipJL47y4zJ19rN+ZGiHxS4kseLg9JLQQfqtuFRotPT4bd8xkrPO42J2UU7r
 C4x3dUwGjZ3s2ZUZ30KURdjdx5Na85gNBbCkE0J93Ov4bcZNsC19vsF/+ZJ2ks5la56U
 dGfA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=hJw1o2wy
Subject: Re: [Intel-wired-lan] [bug report] ice: Enable FDIR Configure for
 AVF
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

On Mon, Sep 01, 2025 at 01:15:03PM +0200, Przemek Kitszel wrote:
> On 9/1/25 11:09, Dan Carpenter wrote:
> > Hello Qi Zhang,
> > 
> > Commit 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF") from Mar
> > 9, 2021 (linux-next), leads to the following Smatch static checker
> > warning:
> > 
> > 	drivers/net/ethernet/intel/ice/virt/fdir.c:2339 ice_vc_del_fdir_fltr()
> > 	warn: missing error code here? 'kzalloc_noprof()' failed
> > 
> > drivers/net/ethernet/intel/ice/virt/fdir.c
> >      2311 int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
> >      2312 {
> >      2313         struct virtchnl_fdir_del *fltr = (struct virtchnl_fdir_del *)msg;
> >      2314         struct virtchnl_fdir_del *stat = NULL;
> >      2315         struct virtchnl_fdir_fltr_conf *conf;
> >      2316         struct ice_vf_fdir *fdir = &vf->fdir;
> >      2317         enum virtchnl_status_code v_ret;
> >      2318         struct ice_fdir_fltr *input;
> >      2319         enum ice_fltr_ptype flow;
> >      2320         struct device *dev;
> >      2321         struct ice_pf *pf;
> >      2322         int is_tun = 0;
> >      2323         int len = 0;
> >      2324         int ret;
> >      2325
> >      2326         pf = vf->pf;
> >      2327         dev = ice_pf_to_dev(pf);
> >      2328         ret = ice_vc_fdir_param_check(vf, fltr->vsi_id);
> >      2329         if (ret) {
> >      2330                 v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> >      2331                 dev_dbg(dev, "Parameter check for VF %d failed\n", vf->vf_id);
> >      2332                 goto err_exit;
> >      2333         }
> >      2334
> >      2335         stat = kzalloc(sizeof(*stat), GFP_KERNEL);
> >      2336         if (!stat) {
> >      2337                 v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
> > 
> > It's not clear if this is deliberate or not.  Maybe we could add a comment?
> > Here set v_ret.
> 
> thank you for the report,
> ice_vc_del_fdir_fltr() is only called from general virtchnl processing
> handler, which returns void, and only logs errors on info level, there
> is nothing to do about the error anyway
> in this case failure at kzalloc() call is on ice/kernel side, not on VF
> side, so in principle worth mentioning/blaming; but, from return code
> (we don't have much variety of those in VC, but for memory alloc failure
> there is one) VF side is knowing that error had happened exactly here
> in case of FDIR filter DEL operation, so not much value added
> 

Thanks for the explanation!

regards,
dan carpenter

