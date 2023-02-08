Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5E868F32C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 17:30:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 034D440C3D;
	Wed,  8 Feb 2023 16:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 034D440C3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675873818;
	bh=mM7WWzQISVpKDoHe/UbBamm+wfKY3fQTd1Dsx/SSgUo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JcmE3D6SWiHXiXZRRXd4yFw7abZA8BoFiATYzozTnq75PDjphBgYkf6pTYOdLnLlw
	 Fysb+XhQAH/4qO5wIIHFqxz/xTUsH+awVleYrCuDOlEZmnYvG9wrMredrgoeRJQ83F
	 bqeRvaTKPA26dYi+uIxEytpIJTJZ+8qFKQvOGjQIKm+eRmeeatZ3cy/IHTv++HQzaG
	 IAu8ym0jcWkQP53J/gTArgVQ8qVVZZnWnUiM2JKVJgm/mhXLz/pDEfB9JyYK2pdeGj
	 Ob0W4PQjPS60OdvdAG56+5niCiYB8Z/EdbDKR6Nqsy6wTO+JY2ccOoFJmvyBDcnwk0
	 /iZw6yJZdf3/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L3TnBQbiKgws; Wed,  8 Feb 2023 16:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1B1D40C2D;
	Wed,  8 Feb 2023 16:30:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1B1D40C2D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9DCBB1BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 13:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7137740B48
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 13:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7137740B48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5pt6kqjVQfQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 13:28:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C532400F2
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C532400F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 13:28:43 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 f47-20020a05600c492f00b003dc584a7b7eso1448472wmp.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Feb 2023 05:28:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OJYQbwZP2YmJ+sqBx1h0cphUKHsAJqEQS1lQRiPxzgE=;
 b=YdEDnQElNuixC3vpI5k4nl0l6a1EsKaNHmeLBtIaMKK0DWfvMKXOSL54wDIpZByFUg
 PBobxfZP9PseHxZ5+9nmFQx91tijvRakJ8BioVj5FkIEmzrWf/s20ABhRw7ZjyK41EJ6
 +I42CiSsKDyixjv7IWQVmAp+eePfZ8UQl4g/t/Tlja/LSKXuv+mp8J61EnjcitmMrewg
 Uuumjdg8nD6gHZcRVv40GgjPAMSENqMtJhqyIM3/NIkks8IoxWitXgXGaQrRHouFOEon
 C1AXCb5hcSGlNBtD+IfRV1eOQIv0G01H78da5VLaKClV1kkxAWxf00XvuIi26n5Mo6+z
 tudQ==
X-Gm-Message-State: AO0yUKUJop4JzzsfAGqEpiRirQ2Yn34kHkV1b3ESThHC0Vtr/5lsxblh
 UIx8slXhVksxjcwiqbvpvrQ=
X-Google-Smtp-Source: AK7set9neI2aTSQMx+E/+o5gcxxStGGo+qOIYkHvptFkp4WDHERxJEYyIFWSrHoUp5mWSpqifpqNmA==
X-Received: by 2002:a05:600c:3416:b0:3df:50eb:7ca6 with SMTP id
 y22-20020a05600c341600b003df50eb7ca6mr6737092wmp.15.1675862921402; 
 Wed, 08 Feb 2023 05:28:41 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 a1-20020a05600c348100b003db0ee277b2sm2046632wmq.5.2023.02.08.05.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Feb 2023 05:28:41 -0800 (PST)
Date: Wed, 8 Feb 2023 16:07:14 +0300
From: Dan Carpenter <error27@gmail.com>
To: michal.swiatkowski@linux.intel.com
Message-ID: <Y+OegpUGZy2RtmjV@kili>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 08 Feb 2023 16:30:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=OJYQbwZP2YmJ+sqBx1h0cphUKHsAJqEQS1lQRiPxzgE=;
 b=Z1kMt6WpsHGQrCy8VOpsXcjfu5ObQbrF4BBrKNxvhDuZfDLp77xWU2wkVLliBna4Su
 DSh3B8UVixqs6x0ik0wPQC1qIIs1O3kIYGlCVcDs8u5+DTydxt7zQYu2CNO0jH+Qy1Q5
 QsOFi6hFwisY3hnBCKYfFKdcFMdr5SIsP5NBP8pIm+jEvyPQrtrs9Zb4/bcgDnsoVqSy
 6wCP+YqPOPeoHPIauypPVgJ5yomPnAsgjWuXtHcu9CJw6l7OeuHtfXGKV9ySgWsBLhzr
 Z7qcC8B1t+1Gdf+bdM7z3a85iIW+xGzZVC0FqZeYRhJpcoudfx/2OMPwf41Db1VXaUl0
 0ALg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Z1kMt6Wp
Subject: [Intel-wired-lan] [bug report] ice: split ice_vsi_setup into
 smaller functions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Michal Swiatkowski,

The patch 6624e780a577: "ice: split ice_vsi_setup into smaller
functions" from Dec 21, 2022, leads to the following Smatch static
checker warning:

drivers/net/ethernet/intel/ice/ice_lib.c:2150 ice_vsi_cfg_xdp_txqs() info: returning a literal zero is cleaner
drivers/net/ethernet/intel/ice/ice_lib.c:2722 ice_vsi_cfg_def() warn: missing error code here? 'ice_vsi_alloc_stat_arrays()' failed. 'ret' = '0'
drivers/net/ethernet/intel/ice/ice_lib.c:2729 ice_vsi_cfg_def() warn: missing error code here? 'ice_vsi_get_qs()' failed. 'ret' = '0'
drivers/net/ethernet/intel/ice/ice_lib.c:3521 ice_vsi_rebuild() warn: missing error code 'ret'
drivers/net/ethernet/intel/ice/ice_lib.c:3766 ice_vsi_cfg_tc() info: returning a literal zero is cleaner

drivers/net/ethernet/intel/ice/ice_lib.c
    2706 static int
    2707 ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
    2708                 int init_vsi)
    2709 {
    2710         struct device *dev = ice_pf_to_dev(vsi->back);
    2711         struct ice_pf *pf = vsi->back;
    2712         int ret;
    2713 
    2714         vsi->vsw = pf->first_sw;
    2715 
    2716         ret = ice_vsi_alloc_def(vsi, vf, ch);
    2717         if (ret)
    2718                 return ret;
    2719 
    2720         /* allocate memory for Tx/Rx ring stat pointers */
    2721         if (ice_vsi_alloc_stat_arrays(vsi))
    2722                 goto unroll_vsi_alloc;

Missing error code.

    2723 
    2724         ice_alloc_fd_res(vsi);
    2725 
    2726         if (ice_vsi_get_qs(vsi)) {
    2727                 dev_err(dev, "Failed to allocate queues. vsi->idx = %d\n",
    2728                         vsi->idx);
--> 2729                 goto unroll_vsi_alloc_stat;

Needs error code.

    2730         }
    2731 
    2732         /* set RSS capabilities */
    2733         ice_vsi_set_rss_params(vsi);
    2734 
    2735         /* set TC configuration */
    2736         ice_vsi_set_tc_cfg(vsi);
    2737 
    2738         /* create the VSI */
    2739         ret = ice_vsi_init(vsi, init_vsi);
    2740         if (ret)
    2741                 goto unroll_get_qs;
    2742 
    2743         ice_vsi_init_vlan_ops(vsi);
    2744 
    2745         switch (vsi->type) {
    2746         case ICE_VSI_CTRL:
    2747         case ICE_VSI_SWITCHDEV_CTRL:
    2748         case ICE_VSI_PF:
    2749                 ret = ice_vsi_alloc_q_vectors(vsi);
    2750                 if (ret)
    2751                         goto unroll_vsi_init;
    2752 
    2753                 ret = ice_vsi_setup_vector_base(vsi);
    2754                 if (ret)
    2755                         goto unroll_alloc_q_vector;
    2756 
    2757                 ret = ice_vsi_set_q_vectors_reg_idx(vsi);
    2758                 if (ret)
    2759                         goto unroll_vector_base;
    2760 
    2761                 ret = ice_vsi_alloc_rings(vsi);
    2762                 if (ret)
    2763                         goto unroll_vector_base;
    2764 
    2765                 ret = ice_vsi_alloc_ring_stats(vsi);
    2766                 if (ret)
    2767                         goto unroll_vector_base;
    2768 
    2769                 ice_vsi_map_rings_to_vectors(vsi);
    2770                 if (ice_is_xdp_ena_vsi(vsi)) {
    2771                         ret = ice_vsi_determine_xdp_res(vsi);
    2772                         if (ret)
    2773                                 goto unroll_vector_base;
    2774                         ret = ice_prepare_xdp_rings(vsi, vsi->xdp_prog);
    2775                         if (ret)
    2776                                 goto unroll_vector_base;
    2777                 }
    2778 
    2779                 /* ICE_VSI_CTRL does not need RSS so skip RSS processing */
    2780                 if (vsi->type != ICE_VSI_CTRL)
    2781                         /* Do not exit if configuring RSS had an issue, at
    2782                          * least receive traffic on first queue. Hence no
    2783                          * need to capture return value
    2784                          */
    2785                         if (test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
    2786                                 ice_vsi_cfg_rss_lut_key(vsi);
    2787                                 ice_vsi_set_rss_flow_fld(vsi);
    2788                         }
    2789                 ice_init_arfs(vsi);
    2790                 break;
    2791         case ICE_VSI_CHNL:
    2792                 if (test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
    2793                         ice_vsi_cfg_rss_lut_key(vsi);
    2794                         ice_vsi_set_rss_flow_fld(vsi);
    2795                 }
    2796                 break;
    2797         case ICE_VSI_VF:
    2798                 /* VF driver will take care of creating netdev for this type and
    2799                  * map queues to vectors through Virtchnl, PF driver only
    2800                  * creates a VSI and corresponding structures for bookkeeping
    2801                  * purpose
    2802                  */
    2803                 ret = ice_vsi_alloc_q_vectors(vsi);
    2804                 if (ret)
    2805                         goto unroll_vsi_init;
    2806 
    2807                 ret = ice_vsi_alloc_rings(vsi);
    2808                 if (ret)
    2809                         goto unroll_alloc_q_vector;
    2810 
    2811                 ret = ice_vsi_set_q_vectors_reg_idx(vsi);
    2812                 if (ret)
    2813                         goto unroll_vector_base;
    2814 
    2815                 ret = ice_vsi_alloc_ring_stats(vsi);
    2816                 if (ret)
    2817                         goto unroll_vector_base;
    2818                 /* Do not exit if configuring RSS had an issue, at least
    2819                  * receive traffic on first queue. Hence no need to capture
    2820                  * return value
    2821                  */
    2822                 if (test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
    2823                         ice_vsi_cfg_rss_lut_key(vsi);
    2824                         ice_vsi_set_vf_rss_flow_fld(vsi);
    2825                 }
    2826                 break;
    2827         case ICE_VSI_LB:
    2828                 ret = ice_vsi_alloc_rings(vsi);
    2829                 if (ret)
    2830                         goto unroll_vsi_init;
    2831 
    2832                 ret = ice_vsi_alloc_ring_stats(vsi);
    2833                 if (ret)
    2834                         goto unroll_vector_base;
    2835 
    2836                 break;
    2837         default:
    2838                 /* clean up the resources and exit */
    2839                 goto unroll_vsi_init;

Error code here as well?

    2840         }
    2841 
    2842         return 0;
    2843 
    2844 unroll_vector_base:
    2845         /* reclaim SW interrupts back to the common pool */
    2846         ice_free_res(pf->irq_tracker, vsi->base_vector, vsi->idx);
    2847         pf->num_avail_sw_msix += vsi->num_q_vectors;
    2848 unroll_alloc_q_vector:
    2849         ice_vsi_free_q_vectors(vsi);
    2850 unroll_vsi_init:
    2851         ice_vsi_delete_from_hw(vsi);
    2852 unroll_get_qs:
    2853         ice_vsi_put_qs(vsi);
    2854 unroll_vsi_alloc_stat:
    2855         ice_vsi_free_stats(vsi);
    2856 unroll_vsi_alloc:
    2857         ice_vsi_free_arrays(vsi);
    2858         return ret;
    2859 }

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
