Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA509587EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 15:28:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FF79811BA;
	Tue, 20 Aug 2024 13:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tVImoQ4kUDlD; Tue, 20 Aug 2024 13:28:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF19B811BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724160494;
	bh=YJo9h6S1dkwectJiD0ozb/QEgoT4y9lp5cdY2OZ1JS8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oeEl1jRT2lgHkTfhUx7g9qKWGhb9PxZMz/yn/OOOX7+1efFvv9dhVlnmNgwtHgCLv
	 LNbrdpAVJ+JP7UIkm+KbH39j6DEsVnndN/Q+LBxc67SdxA08qqGvdbMFSRsghBHz0I
	 qW7pRNv8o2TPb5XQe8fToiGbF/H6sbH8BA8qy125VYKe8Y+aLkZ9nTAsEu6MArxYS5
	 vaCILSMnOeTS6S1Agbuahm5f5pCATJ9su5+NiQXW54Do8Hw7RLj1Gfejp42IZFCzdL
	 RXizMEiKwwZ4jrEITq4MBpQZDIj3yP+Kb5QXuRMx+GahMxWh97boHy/OcABzAk0oKl
	 ESwZksV1/8qLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF19B811BE;
	Tue, 20 Aug 2024 13:28:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D58771BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:28:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1D25405F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:28:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e46naoQ5RWFx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 13:28:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::135; helo=mail-lf1-x135.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 853FA405E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 853FA405E6
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 853FA405E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:28:12 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-53346132365so221714e87.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 06:28:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724160490; x=1724765290;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YJo9h6S1dkwectJiD0ozb/QEgoT4y9lp5cdY2OZ1JS8=;
 b=Ld+jxm3O4pEn2gyuNSBM94Wt8K3/NBFRmljJVfXBCmVuQZun4UNyxLrncn9vAqKCPt
 kWFt2UHPCUPgXVhY6v9AR64exVcN0KwoLo2gi3iwC5nYdQCdSyfGQop8HZz/Y7/FX0HL
 Qi/jOJsJ8xa68AhwvFHI+UosjOBRMoOaqdUNzG3u2tCXAYYCuKgefzcs06zOF6/mDS0R
 Y1OXlTOInVU/1m31ArYFf6B4SDKDnqdzTWrw3fzqgpYXm+apV37Gj6OVobPEnIuaIICl
 7xDb6molBk9HDlA93F43ERgXzAny4rs7stjoLE+GDc1S9dQv0PtAhsbFpiSWRDJNXlqh
 y9Jg==
X-Gm-Message-State: AOJu0Yws5iN4ZQtd+8rqpdv072Xa2unLurquRFYGasb6EbwY9Z3YUW7v
 usaSLWmTDlPfpJCTFTx17Ukgf5dNwHbMD8bACEGWs8jSNAPGP2XqbhlyJjkVUyY=
X-Google-Smtp-Source: AGHT+IGjwKAwx4Ae4f23ZaaeSh5Hpcasp7PL1pY0tgQ4+rhAxduYhIAexEcx2OKjuSCuwKXZQk8QZA==
X-Received: by 2002:a05:6512:12cc:b0:530:c323:46a8 with SMTP id
 2adb3069b0e04-5331c6a4577mr9189227e87.23.1724160490002; 
 Tue, 20 Aug 2024 06:28:10 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a83838c6bc5sm760935066b.31.2024.08.20.06.28.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2024 06:28:09 -0700 (PDT)
Date: Tue, 20 Aug 2024 16:28:06 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Junfeng Guo <junfeng.guo@intel.com>
Message-ID: <b1fb6ff9-b69e-4026-9988-3c783d86c2e0@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1724160490; x=1724765290; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YJo9h6S1dkwectJiD0ozb/QEgoT4y9lp5cdY2OZ1JS8=;
 b=NKFZpw2fVhMQdrzUycXMO3IGl+AmuuJNiJ7hJA18LqQc9yQq8I4kdK1kHVe2v6NQEi
 AF0Ka/eKvryW3c7UT4YHvwOyxOJFML0Gl8xOBvXcU/+bMGnZLjCbd6oqJEuceM1XkZWe
 eekWNQwaexJrdPjz1PNGgKZ2aQDBywFJcNpVbEEvwp3ObLiQTCbkXq/FEY76prWUzWRR
 kmEnK6tFOiTxFXydCiFa2406a4QvYOPb6XMexmnad2wE52vHzC2Uv+rORPSQ7PVkbFYP
 +XaymchkWKZTnnPrRnLOEyLhUgHuFFFf3sLHpO9YK+DG7X5dmpBVOT5Hfmr/5L4cgdjy
 lB2g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=NKFZpw2f
Subject: [Intel-wired-lan] [bug report] ice: add parser execution main loop
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

Hello Junfeng Guo,

Commit 9a4c07aaa0f5 ("ice: add parser execution main loop") from Jul
25, 2024 (linux-next), leads to the following Smatch static checker
warning:

drivers/net/ethernet/intel/ice/ice_parser_rt.c:124 ice_bst_key_init() error: buffer overflow 'key' 10 <= 19
drivers/net/ethernet/intel/ice/ice_parser_rt.c:126 ice_bst_key_init() error: buffer overflow 'key' 10 <= 19
drivers/net/ethernet/intel/ice/ice_parser_rt.c:134 ice_bst_key_init() error: buffer overflow 'key' 10 <= 18
drivers/net/ethernet/intel/ice/ice_parser_rt.c:136 ice_bst_key_init() error: buffer overflow 'key' 10 <= 18

drivers/net/ethernet/intel/ice/ice_parser_rt.c
    114 static void ice_bst_key_init(struct ice_parser_rt *rt,
    115                              struct ice_imem_item *imem)
    116 {
    117         u8 tsr = (u8)rt->gpr[ICE_GPR_TSR_IDX];
    118         u16 ho = rt->gpr[ICE_GPR_HO_IDX];
    119         u8 *key = rt->bst_key;
    120         int idd, i;
    121 
    122         idd = ICE_BST_TCAM_KEY_SIZE - 1;

The key array has ICE_BST_KEY_SIZE (10) elements, but this code is using
TCAM key size which is 20.

    123         if (imem->b_kb.tsr_ctrl)
--> 124                 key[idd] = tsr;
                        ^^^^^^^^
It results in memory corruption

    125         else
    126                 key[idd] = imem->b_kb.prio;
    127 
    128         idd = ICE_BST_KEY_TCAM_SIZE - 1;

Same thing again.  This size is 19 instead of 20 but still larger than 10.

    129         for (i = idd; i >= 0; i--) {
    130                 int j;
    131 
    132                 j = ho + idd - i;
    133                 if (j < ICE_PARSER_MAX_PKT_LEN)
    134                         key[i] = rt->pkt_buf[ho + idd - i];
    135                 else
    136                         key[i] = 0;
                                ^^^^^^^^^^^
Corrupt

    137         }
    138 
    139         ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generated Boost TCAM Key:\n");
    140         ice_debug(rt->psr->hw, ICE_DBG_PARSER, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n",
    141                   key[0], key[1], key[2], key[3], key[4],
    142                   key[5], key[6], key[7], key[8], key[9]);
    143         ice_debug(rt->psr->hw, ICE_DBG_PARSER, "\n");
    144 }

regards,
dan carpenter
