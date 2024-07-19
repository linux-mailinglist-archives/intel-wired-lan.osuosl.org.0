Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E39CA937E30
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jul 2024 01:53:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D6B640CEF;
	Fri, 19 Jul 2024 23:53:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NE61ngBnnleh; Fri, 19 Jul 2024 23:53:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35A2940CC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721433190;
	bh=8jKI2+pJ/hj2dFG3JO8/wW5phKHNKTkEwqJ1wrSTIiw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VXsILi4Nhha09HYqO9fT16SMxxsVKpx4LN2I38rnJzyPvZ3s+ylN2qgLZ89dzPJ+A
	 3xjFqgMYZFGQyWHRycbXGZ61e5leVRhl61/Fy6waioBFXVOOzwL7eHsjanaViJKHVl
	 1+H84978Sg7ee5xWRXCyyyic+WLqyZKOO8Z+FLIYt54dQ101d7OYY+R1WO+PzJtlvt
	 PWSBNr8WYsm+sYEhiMjvttY5Vk1N/Il6qyOQdarI5mtDnrLmprYnwFNuZcf+Y2rO18
	 z8tTB4qRCy8l8qOAfzx/y68J9Ki/0hChJOatgae6o9DRbPdSX8eXvygfB14b9hnKS3
	 /DfdjRwDTLVzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35A2940CC7;
	Fri, 19 Jul 2024 23:53:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6255E1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 23:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E28B407A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 23:53:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OJXu0gD78lDb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jul 2024 23:53:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::231; helo=mail-oi1-x231.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 18352404EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18352404EF
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18352404EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 23:53:06 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id
 5614622812f47-3c9cc681ee0so1326605b6e.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 16:53:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721433186; x=1722037986;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8jKI2+pJ/hj2dFG3JO8/wW5phKHNKTkEwqJ1wrSTIiw=;
 b=F0hOTjg0HL2/sdXU4/HRSJxIO29IBD+yOrazcHU8ociy6NQcTpbayqtpUf5L0goWe5
 N+NSDgIt2xN6oga9bsx0li2pQ0QEI2VggXWjNzJd6euRVknvByZe80zTNW0hamY2Xi9c
 tyZ+SJ2r6MyU0v/IxSeVKPG2xerev3hbbtNqseCMwDsxsPl0CGvYXwHFTzo7wCbGlFya
 7SAWodDEpObdN200Ukxa7mjoHjAB4wumKNFRuJYnmfNYy3bz2JqMRSpDKjumNIynA2H5
 BQw4rurWG81gxxfDL0vdeO1HzP9KlKv0rL6e73VQHFb0gdQIYW43RCJIkGNxGDMEb8H6
 XfhQ==
X-Gm-Message-State: AOJu0Yz6MfbmnrVnqWvcXspFhQQWWyE9L/7OfiIHWlG8iAmUIU+WLlWO
 lbgWyrIKH4swpyUftInZNFUK5sJWEn8uq5aNlpVNelvuNvlyKMwAGsi07Hie3js=
X-Google-Smtp-Source: AGHT+IGcOVyNzm6CCUfg5hr3S9u47MEKcWGWv0a0Ba/JHHCbQxiRHuXv4ErvKuKmKG55b4H9fagYuQ==
X-Received: by 2002:a05:6808:181e:b0:3d9:fab2:d767 with SMTP id
 5614622812f47-3dae97367f0mr107129b6e.20.1721433185978; 
 Fri, 19 Jul 2024 16:53:05 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:739a:b665:7f57:d340])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-3dae098fc80sm490171b6e.28.2024.07.19.16.53.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jul 2024 16:53:05 -0700 (PDT)
Date: Fri, 19 Jul 2024 18:53:03 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <a355ae8a-9011-4a85-a4d1-5b2793bb5f7b@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1721433186; x=1722037986; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=8jKI2+pJ/hj2dFG3JO8/wW5phKHNKTkEwqJ1wrSTIiw=;
 b=z068gttuSZWS5zcxrXDCJdCrAHZjOSxVEagPDdsYhJBwo0xY/2lHXFE5pIYBett2xF
 g4BALXsgCPYhPf8ZK8x/hSxALMW0Gb0d1IoDN2YXn9DxiXRy5nNKcH0HBFsDckmFP/lJ
 J6iHGkM6C/N2rs17AWJ6RT7YF0/Y8CUvi795F66TINFhE5N50gSyCgm5YfPQ2lrMvrD3
 Fx4G+j9FJ1IO+DAhemZB/gaezKgeFfJfkKil6eDq0V76FOUrD1Mbym9HtT+MdrI9UaB4
 5rCChU2iK3lJZ/mc/W4ld5LS04JBi6z9qtOIkSOfzorRgjH3QPxct8bjYw59Q5HGv9CD
 kXnA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=z068gttu
Subject: [Intel-wired-lan] [bug report] idpf: add core init and interrupt
 request
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

Hello Pavan Kumar Linga,

Commit 4930fbf419a7 ("idpf: add core init and interrupt request")
from Aug 7, 2023 (linux-next), leads to the following Smatch static
checker warning:

	drivers/net/ethernet/intel/idpf/idpf_lib.c:417 idpf_intr_req()
	error: we previously assumed 'adapter->req_vec_chunks' could be null (see line 360)

drivers/net/ethernet/intel/idpf/idpf_lib.c
    315 int idpf_intr_req(struct idpf_adapter *adapter)
    316 {
    317         u16 default_vports = idpf_get_default_vports(adapter);
    318         int num_q_vecs, total_vecs, num_vec_ids;
    319         int min_vectors, v_actual, err;
    320         unsigned int vector;
    321         u16 *vecids;
    322 
    323         total_vecs = idpf_get_reserved_vecs(adapter);
    324         num_q_vecs = total_vecs - IDPF_MBX_Q_VEC;
    325 
    326         err = idpf_send_alloc_vectors_msg(adapter, num_q_vecs);
    327         if (err) {
    328                 dev_err(&adapter->pdev->dev,
    329                         "Failed to allocate %d vectors: %d\n", num_q_vecs, err);
    330 
    331                 return -EAGAIN;
    332         }
    333 
    334         min_vectors = IDPF_MBX_Q_VEC + IDPF_MIN_Q_VEC * default_vports;
    335         v_actual = pci_alloc_irq_vectors(adapter->pdev, min_vectors,
    336                                          total_vecs, PCI_IRQ_MSIX);
    337         if (v_actual < min_vectors) {
    338                 dev_err(&adapter->pdev->dev, "Failed to allocate MSIX vectors: %d\n",
    339                         v_actual);
    340                 err = -EAGAIN;
    341                 goto send_dealloc_vecs;
    342         }
    343 
    344         adapter->msix_entries = kcalloc(v_actual, sizeof(struct msix_entry),
    345                                         GFP_KERNEL);
    346 
    347         if (!adapter->msix_entries) {
    348                 err = -ENOMEM;
    349                 goto free_irq;
    350         }
    351 
    352         idpf_set_mb_vec_id(adapter);
    353 
    354         vecids = kcalloc(total_vecs, sizeof(u16), GFP_KERNEL);
    355         if (!vecids) {
    356                 err = -ENOMEM;
    357                 goto free_msix;
    358         }
    359 
    360         if (adapter->req_vec_chunks) {
                    ^^^^^^^^^^^^^^^^^^^^^^^
If ->req_vec_chunks is NULL the error handling will crash

    361                 struct virtchnl2_vector_chunks *vchunks;
    362                 struct virtchnl2_alloc_vectors *ac;
    363 
    364                 ac = adapter->req_vec_chunks;
    365                 vchunks = &ac->vchunks;
    366 
    367                 num_vec_ids = idpf_get_vec_ids(adapter, vecids, total_vecs,
    368                                                vchunks);
    369                 if (num_vec_ids < v_actual) {
    370                         err = -EINVAL;
    371                         goto free_vecids;
    372                 }
    373         } else {
    374                 int i;
    375 
    376                 for (i = 0; i < v_actual; i++)
    377                         vecids[i] = i;
    378         }
    379 
    380         for (vector = 0; vector < v_actual; vector++) {
    381                 adapter->msix_entries[vector].entry = vecids[vector];
    382                 adapter->msix_entries[vector].vector =
    383                         pci_irq_vector(adapter->pdev, vector);
    384         }
    385 
    386         adapter->num_req_msix = total_vecs;
    387         adapter->num_msix_entries = v_actual;
    388         /* 'num_avail_msix' is used to distribute excess vectors to the vports
    389          * after considering the minimum vectors required per each default
    390          * vport
    391          */
    392         adapter->num_avail_msix = v_actual - min_vectors;
    393 
    394         /* Fill MSIX vector lifo stack with vector indexes */
    395         err = idpf_init_vector_stack(adapter);
    396         if (err)
    397                 goto free_vecids;
    398 
    399         err = idpf_mb_intr_init(adapter);
    400         if (err)
    401                 goto deinit_vec_stack;
    402         idpf_mb_irq_enable(adapter);
    403         kfree(vecids);
    404 
    405         return 0;
    406 
    407 deinit_vec_stack:
    408         idpf_deinit_vector_stack(adapter);
    409 free_vecids:
    410         kfree(vecids);
    411 free_msix:
    412         kfree(adapter->msix_entries);
    413         adapter->msix_entries = NULL;
    414 free_irq:
    415         pci_free_irq_vectors(adapter->pdev);
    416 send_dealloc_vecs:
--> 417         idpf_send_dealloc_vectors_msg(adapter);
                                              ^^^^^^^
Inside this function

    418 
    419         return err;
    420 }

regards,
dan carpenter
