Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E4A42C1D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 15:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E184A40593;
	Wed, 13 Oct 2021 13:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vC9QGh-0H_Tj; Wed, 13 Oct 2021 13:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35E8C40561;
	Wed, 13 Oct 2021 13:57:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC8F71BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9EE56080D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mIn0jQan74YJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Oct 2021 07:18:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0755B60781
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:03 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id g8so6072234edt.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 00:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ot0YXRr1MYkMN/lp1/Ph3IwBVwPjRVRrGimZdgk3jPw=;
 b=IXWz1b6Gy10RvdasJEE9RUURJDktg9h2/xx+LE0pLl1TRm8dvyejce5t6YH+7ImlVK
 9UsYWbGVAhXVI1j4MPceJQe9nk6aXi4aqnVr7FlbO5UokzbtjI3i1R3rpxW2OW8wWSf6
 8CQOTr/PR76bplkKY/xf9XJ/nW0yYPXMfS9/yVUHUnMQfIJQ5rNf5Mx9yDghuYtWDPnq
 tvqPc2A49h3eXS22DDt5EDi6+ORZfrfo0I5KRXhuRgb+cpUWXgJPxiuYBTW//ntqNt0M
 dXW0qFYy2tnpAiW6MvsBMadU0vP0PBeXMx/U52/42/gw473xFnstM/z3if++Y6Pc5nbt
 xwUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ot0YXRr1MYkMN/lp1/Ph3IwBVwPjRVRrGimZdgk3jPw=;
 b=27Ph7UIJYxbIb6bmOqv1oGD9GoC5gYVUfwtu/Fi23sMaj2FaobCG/iS7+xm/Ic5ymV
 v51S5MlvVlDZp3g0I+2xPbrX3//dh2wPcJK0yX8Xjsk4zCAIhxr6sm5V19tK0w2CbGdo
 wqB30y1zcY3GTN760CSbrbaSQfBFRHzkYXuJRvqYiiDAOlMwiXqOSG9mPTS21u8DPSl7
 XlEFJWgExqJAYrvjszU8IA1RjosObzPPy0IKUAyPr4VEC5pOPpOwZ0A8HACO7m4FYaJ+
 SMOsuJ28Z2Rqdxp6EHoUPUdDBwjC5gHpGmUea0enuGIUXO27KSP2Qik13wgam0RdLucD
 BVMg==
X-Gm-Message-State: AOAM533d6Ac8ypXp5kZHjEgx9nAbpqYvvsI+v8ePxnEWUIel6W7XeLvO
 sev4VBK/MDsAKkH9at5bcGY=
X-Google-Smtp-Source: ABdhPJxMpJ7L5jn2SeUckB3/ATIQ7y2xuOfZduQN+SaPkdoKbJ8RGZAPGbAiTlRVMkIfyD2CcpYQ/g==
X-Received: by 2002:a17:907:7fa8:: with SMTP id
 qk40mr37746912ejc.445.1634109481855; 
 Wed, 13 Oct 2021 00:18:01 -0700 (PDT)
Received: from localhost.localdomain
 (84-104-224-163.cable.dynamic.v4.ziggo.nl. [84.104.224.163])
 by smtp.gmail.com with ESMTPSA id f7sm2935886edl.33.2021.10.13.00.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 00:18:01 -0700 (PDT)
From: Ruud Bos <kernel.hbk@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 13 Oct 2021 09:15:27 +0200
Message-Id: <20211013071531.1145-1-kernel.hbk@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 13 Oct 2021 13:57:02 +0000
Subject: [Intel-wired-lan] [PATCH net-next RESEND 0/4] igb: support PEROUT
 and EXTTS PTP pin functions on 82580/i354/i350
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

Ruud Bos (4):
  igb: move SDP config initialization to separate function
  igb: move PEROUT and EXTTS isr logic to separate functions
  igb: support PEROUT on 82580/i354/i350
  igb: support EXTTS on 82580/i354/i350

 drivers/net/ethernet/intel/igb/igb_main.c | 141 ++++++++++++-----
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 183 ++++++++++++++++++++--
 2 files changed, 279 insertions(+), 45 deletions(-)

-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
