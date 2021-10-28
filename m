Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354E943E3F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 16:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A2C240485;
	Thu, 28 Oct 2021 14:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mptfEI63LSkh; Thu, 28 Oct 2021 14:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46794400FF;
	Thu, 28 Oct 2021 14:39:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47C801BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:37:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4300B824DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5x20a3MrxHS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 14:37:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 769C8824DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:37:58 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id w15so25872422edc.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 07:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VZDbXMmyolFmx1o5WGp4p2BAx1Dz6AsqqfsWYE0TppQ=;
 b=kZef92Jp6vMjPikNnLW7QZ9IY91377awUFQ3/w4y6iNHnSh6W38Bui6n83a3p8DRro
 wMblVTzfyozToEn4kDTqbxPqqadNE3hXZ4bjwAWJqYJkUF+79f3MEzJJ0TiNcZEGWIGi
 NTLo2ilvBG5ei0jdqeS0BGQpV5tNoJzsP61Wfi/VuOJif5YBxZhYID/YdlkUoISKzpFc
 ZH1jsy8rHVrqQ+qIpzab16XB8MAghx/gKuoxrpEjVtQImQPbPfUTLt5LyhH4x56jeDKV
 ase6hLjvPPf9LzVclT9tUNQX9IOLiB0mSG9+mYf6wwUSr1ZQiGZl/UlDxhQ1KeS/TNiM
 t2Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VZDbXMmyolFmx1o5WGp4p2BAx1Dz6AsqqfsWYE0TppQ=;
 b=ndBBRL8OLk4mNmM8CEqH+jSUN04CCRMXYB2n0teBKhhclgLVfDHB2xvNzXv3NDieVY
 eu+sa23zaBartFRtJNmKd7ReU3ZQzKB8U3DqrN01D6DpQOt7lwnr9+yrOTcjrm4jixjf
 OUnrqCvqAVt2BJApvItyDOmMxhGAOV877EiH5wggdHN7f71zUanu6rLqJaCgAEf1xtgM
 3Q0tQ+u2c4Tc0wo0dxQNkjTfr4Wrg6XDjZfeaa7ZNkDYGoZWw3s70+1V1lc/nj8Juw36
 PXedBfyQdv8OKVDnCtl5GFbKGxWUbig0kx2Pt3MaEfn7txti8uWx94mgpxjUhqyseq/o
 acLA==
X-Gm-Message-State: AOAM531xlxJrYtN/yuQfy6Dtq/D9Bjm1cqgIMq4YvZqEsHbaacdLK52+
 57k1hjXK5OMB3/T5Ke4UOEM=
X-Google-Smtp-Source: ABdhPJw6s7NgADO8J9iL6+a/Vai8mcCLEdkMmOPeTWO9r4+K6Y8GtqlfGHQwmAsL2miJBHcoCKiF4w==
X-Received: by 2002:a05:6402:50c7:: with SMTP id
 h7mr6651903edb.191.1635431875234; 
 Thu, 28 Oct 2021 07:37:55 -0700 (PDT)
Received: from localhost.localdomain
 (84-104-224-163.cable.dynamic.v4.ziggo.nl. [84.104.224.163])
 by smtp.gmail.com with ESMTPSA id di12sm1514501ejc.3.2021.10.28.07.37.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 07:37:54 -0700 (PDT)
From: Ruud Bos <kernel.hbk@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Oct 2021 16:34:55 +0200
Message-Id: <20211028143459.903439-1-kernel.hbk@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 28 Oct 2021 14:38:52 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 0/4] igb: support PEROUT and
 EXTTS PTP pin functions on 82580/i354/i350
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com,
 Ruud Bos <kernel.hbk@gmail.com>, davem@davemloft.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The igb driver provides support for PEROUT and EXTTS pin functions that
allow adapter external use of timing signals. At Hottinger Bruel & Kjaer we
are using the PEROUT function to feed a PTP corrected 1pps signal into an
FPGA as cross system synchronized time source.

Support for the PEROUT and EXTTS SDP functions is currently limited to
i210/i211 based adapters. This patch series enables these functions also
for 82580/i354/i350 based ones. Because the time registers of these
adapters do not have the nice split in second rollovers as the i210 has,
the implementation is slightly more complex compared to the i210
implementation.

The PEROUT function has been successfully tested on an i350 based ethernet
adapter. Using the following user space code excerpt, the driver outputs a
PTP corrected 1pps signal on the SDP0 pin of an i350:

    struct ptp_pin_desc desc;
    memset(&desc, 0, sizeof(desc));
    desc.index = 0;
    desc.func = PTP_PF_PEROUT;
    desc.chan = 0;
    if (ioctl(fd, PTP_PIN_SETFUNC, &desc) == 0) {
        struct timespec ts;
        if (clock_gettime(clkid, &ts) == 0) {
            struct ptp_perout_request rq;
            memset(&rq, 0, sizeof(rq));
            rq.index = 0;
            rq.start.sec = ts.tv_sec + 1;
            rq.start.nsec = 500000000;
            rq.period.sec  = 1;
            rq.period.nsec = 0;
            if (ioctl(fd, PTP_PEROUT_REQUEST, &rq) == 0) {
                /* 1pps signal is now available on SDP0 */
            }
        }
    }

The added EXTTS function has not been tested. However, looking at the data
sheets, the layout of the registers involved match the i210 exactly except
for the time registers mentioned before. Hence the almost identical
implementation.

v2:
 - fix PEROUT on SDP2/SDP3
 - rename incorrectly named sdp function argument to tsintr_tt
 - fix white space issue

Ruud Bos (4):
  igb: move SDP config initialization to separate function
  igb: move PEROUT and EXTTS isr logic to separate functions
  igb: support PEROUT on 82580/i354/i350
  igb: support EXTTS on 82580/i354/i350

 drivers/net/ethernet/intel/igb/igb_main.c | 148 +++++++++++++----
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 188 ++++++++++++++++++++--
 2 files changed, 291 insertions(+), 45 deletions(-)


base-commit: 911e3a46fb38669560021537e00222591231f456
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
