Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31049B3DDA7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 11:09:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1B2D60DF8;
	Mon,  1 Sep 2025 09:09:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P1ikw55ADl2V; Mon,  1 Sep 2025 09:09:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22C5F610F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756717777;
	bh=eavFjSSqsVI5a+6JgUjhIYAlr3G1Q7XXnT7N6YcZlWY=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=T/dabNY4hbwQaRQaHXDkZ9BpZKjla7NAvyLjl6dZAstOsLUm8DD9qt/zlzDiyiu9T
	 jNzQjPnJyP5rRRlyqKv/XPT/L6tbzRK34Mf7hpkHNfteBK/lOHxhhI/AFHtiWVkMF0
	 m+haVVgyhO2MFmHLNY5x51BXKx92AqC29xqM9W8vLeYHejqPprjGFWogRg8Se2vetJ
	 Zf2pQpbMGCYEpBjY5OEkj4Q0KxZv+3+aHeLRBWJlNQOw3FECFPtXxXADjwb+MkwUjJ
	 /BaiobCFJhXbhy+w3W6znX5kD7JTME8FXPkFEUurj3OkbUL60luHE8omrvv3pB/QcL
	 1ascgnbxCqLEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22C5F610F9;
	Mon,  1 Sep 2025 09:09:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CA3F2D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 09:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF8FC406EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 09:09:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ghxng29zW4ve for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 09:09:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0D5E406B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0D5E406B2
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0D5E406B2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 09:09:33 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-45b7d87b90fso25051915e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Sep 2025 02:09:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756717772; x=1757322572;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eavFjSSqsVI5a+6JgUjhIYAlr3G1Q7XXnT7N6YcZlWY=;
 b=UHcIy27WC3n07C5sjCsHSgGZiBMudI4y4Z857UmoLDRFIE73Mw38JVqTUpOohV80nE
 Ag5zTeT1bbSbPMoMwnXtygxJnzwVYzy8387NkXoSk/wxz+LEBCkK1moKBjKptqxUHUWe
 Jr5IKlMBQ4vjJDI8Z8hyEXKU8/O+0xVKMQ+PFrYYqRWPxKw7f1tOxF7nnLQccAy5KahQ
 c4Gxjoa2mZIktaQDuuUUdL1mpZoy31RcrJW2RBPMn+DxGvtrZ55azs5yOaliEbRtJELb
 z8xh1K3hNJyoKXKB3lEuQTFLSbbxMrSHEYh2dhSUjRYxGb8cSF2mbp0TCGYC6H4RRcgd
 pokQ==
X-Gm-Message-State: AOJu0YxugACmunyn5wyEItHz+JXgGHk7+BuRMVPWfGwfU96DiTbt7jBu
 ID2t3TA+ahOEeIVowpe/S3rwePIv0bWb0f65/kukMx+QDwnvNP/oRwW+oN9EqixVrRM=
X-Gm-Gg: ASbGncuiUp9r6oWs+vNUJwbOerdsX4G7H1DCplBZjOEttibF9Y+jrJWpUjv3BUD4oqf
 CWb1ki4i8NvdBaISPXRz80AzgbngMUct0BELMWYKBTdxy2mo3BSYrXhCe3nYhB65Z2AbjUrliY7
 wfScr+GKy+2fXzCclXHGlHJ/xyZY7/FJpAWaEhjfaoh+qLiFsOw299Rl9NqDkQmcMGqX+EGvQNT
 D3LTajQ6C1zBUBW/AzAB8V25BgEg7j03MFePJatZBZPjswRcROE0JJ8JX2RZEcj9jeDoumAhP1b
 Q1bJtrLjDM70CQCKAZhv6BnfO1AdbbuM7x4u4NmlbPiqkhMZcAmON8PcccZqwIj01P08XrGfejK
 Dkocvd4tMQwDF8G+gV5QYoWFBg6//Xvvb9yK28Q==
X-Google-Smtp-Source: AGHT+IGDbHBE8xEb4xIdgcvun0IL3sc9Rqhh251hmPYijj/usrtNkISDUPNwHMyXxDqDCV41wVxN+g==
X-Received: by 2002:a05:600c:4f4a:b0:45b:8a0e:cdbf with SMTP id
 5b1f17b1804b1-45b8a0ece70mr40077275e9.1.1756717771513; 
 Mon, 01 Sep 2025 02:09:31 -0700 (PDT)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b6f0c6db6sm242236765e9.2.2025.09.01.02.09.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Sep 2025 02:09:31 -0700 (PDT)
Date: Mon, 1 Sep 2025 12:09:27 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Qi Zhang <qi.z.zhang@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Message-ID: <aLVix68cQNQr4CC8@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1756717772; x=1757322572; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eavFjSSqsVI5a+6JgUjhIYAlr3G1Q7XXnT7N6YcZlWY=;
 b=OCuOcPXc/vqZNqzKTUHdNj5VBoKF07HoTPMSbhfVeLiJOu/MbzF8gsPEMb7OAS0wHI
 HlxC8ZMclZtOBsIUbQemzeVuMqEZJPMA3xmYnA8GdiL4D2eUzlm4ql6ggl0C+IoGBMuc
 5q5x7tPgmeeSkkAxHtryuP0T8P8xXWtzi4bRgK6ORNebvoAE5NqbLs3UzeL3fsCvB2i4
 CZK9KZBfEMXuEnhj5UA6mzW7RJmoyW4Cw9o2Q8QQNf+ucIGQHCaL+sZ5t330JbIaf8A1
 Y8x9ccq0GTEMpxSBluNiMLaosSRf/PCQR9FRjjjLCdw5pVvS5WFXIGy/8mrbBNnONMUg
 argQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=OCuOcPXc
Subject: [Intel-wired-lan] [bug report] ice: Enable FDIR Configure for AVF
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

Hello Qi Zhang,

Commit 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF") from Mar
9, 2021 (linux-next), leads to the following Smatch static checker
warning:

	drivers/net/ethernet/intel/ice/virt/fdir.c:2339 ice_vc_del_fdir_fltr()
	warn: missing error code here? 'kzalloc_noprof()' failed

drivers/net/ethernet/intel/ice/virt/fdir.c
    2311 int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
    2312 {
    2313         struct virtchnl_fdir_del *fltr = (struct virtchnl_fdir_del *)msg;
    2314         struct virtchnl_fdir_del *stat = NULL;
    2315         struct virtchnl_fdir_fltr_conf *conf;
    2316         struct ice_vf_fdir *fdir = &vf->fdir;
    2317         enum virtchnl_status_code v_ret;
    2318         struct ice_fdir_fltr *input;
    2319         enum ice_fltr_ptype flow;
    2320         struct device *dev;
    2321         struct ice_pf *pf;
    2322         int is_tun = 0;
    2323         int len = 0;
    2324         int ret;
    2325 
    2326         pf = vf->pf;
    2327         dev = ice_pf_to_dev(pf);
    2328         ret = ice_vc_fdir_param_check(vf, fltr->vsi_id);
    2329         if (ret) {
    2330                 v_ret = VIRTCHNL_STATUS_ERR_PARAM;
    2331                 dev_dbg(dev, "Parameter check for VF %d failed\n", vf->vf_id);
    2332                 goto err_exit;
    2333         }
    2334 
    2335         stat = kzalloc(sizeof(*stat), GFP_KERNEL);
    2336         if (!stat) {
    2337                 v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;

It's not clear if this is deliberate or not.  Maybe we could add a comment?
Here set v_ret.


    2338                 dev_dbg(dev, "Alloc stat for VF %d failed\n", vf->vf_id);
--> 2339                 goto err_exit;
    2340         }
    2341 
    2342         len = sizeof(*stat);
    2343 
    2344         conf = ice_vc_fdir_lookup_entry(vf, fltr->flow_id);
    2345         if (!conf) {
    2346                 v_ret = VIRTCHNL_STATUS_SUCCESS;
    2347                 stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST;
    2348                 dev_dbg(dev, "VF %d: FDIR invalid flow_id:0x%X\n",
    2349                         vf->vf_id, fltr->flow_id);
    2350                 goto err_exit;
    2351         }
    2352 
    2353         /* Just return failure when ctrl_vsi idx is invalid */
    2354         if (vf->ctrl_vsi_idx == ICE_NO_VSI) {
    2355                 v_ret = VIRTCHNL_STATUS_SUCCESS;
    2356                 stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
    2357                 dev_err(dev, "Invalid FDIR ctrl_vsi for VF %d\n", vf->vf_id);
    2358                 goto err_exit;
    2359         }
    2360 
    2361         ret = ice_vc_fdir_set_irq_ctx(vf, conf, VIRTCHNL_OP_DEL_FDIR_FILTER);
    2362         if (ret) {
    2363                 v_ret = VIRTCHNL_STATUS_SUCCESS;
    2364                 stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
    2365                 dev_dbg(dev, "VF %d: set FDIR context failed\n", vf->vf_id);
    2366                 goto err_exit;
    2367         }
    2368 
    2369         /* For raw FDIR filters created by the parser */
    2370         if (conf->parser_ena) {
    2371                 ret = ice_vc_del_fdir_raw(vf, conf, &v_ret, stat, len);
    2372                 if (ret)
    2373                         goto err_del_tmr;
    2374                 goto exit;
    2375         }
    2376 
    2377         is_tun = ice_fdir_is_tunnel(conf->ttype);
    2378         ret = ice_vc_fdir_write_fltr(vf, conf, false, is_tun);
    2379         if (ret) {
    2380                 v_ret = VIRTCHNL_STATUS_SUCCESS;
    2381                 stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
    2382                 dev_err(dev, "VF %d: writing FDIR rule failed, ret:%d\n",
    2383                         vf->vf_id, ret);
    2384                 goto err_del_tmr;
    2385         }
    2386 
    2387         /* Remove unused profiles to avoid unexpected behaviors */
    2388         input = &conf->input;
    2389         flow = input->flow_type;
    2390         if (fdir->fdir_fltr_cnt[flow][is_tun] == 1)
    2391                 ice_vc_fdir_rem_prof(vf, flow, is_tun);
    2392 
    2393 exit:
    2394         kfree(stat);
    2395 
    2396         return ret;
    2397 
    2398 err_del_tmr:
    2399         ice_vc_fdir_clear_irq_ctx(vf);
    2400 err_exit:
    2401         ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_FDIR_FILTER, v_ret,
    2402                                     (u8 *)stat, len);

But then "ret" is generally going to be success.

    2403         kfree(stat);
    2404         return ret;
    2405 }

regards,
dan carpenter
