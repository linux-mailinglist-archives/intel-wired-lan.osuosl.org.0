Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BB7544E0D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 15:51:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62A6660E9F;
	Thu,  9 Jun 2022 13:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rCmgzVS00Qyy; Thu,  9 Jun 2022 13:51:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B75760AD6;
	Thu,  9 Jun 2022 13:51:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D6D11BF25B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 06:59:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B5D441C23
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 06:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gooddata.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ZwL4bXT_G6T for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jun 2022 06:59:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41306408E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 06:59:08 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id hf10so16530162qtb.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Jun 2022 23:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gooddata.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=9m/lkuEIL3LLHFQIEL7Od835CCLTn6kPwH6DJHDkn4M=;
 b=X5wLoDfPRYxGW85+6kIvViQ/dV8a79ydKOcnHDGhrYVNuc8GNiNdlV8HFCbcBbttEc
 45OP5nySQaxZDdfw4egbtC/tC2vseUZSE46IvsV9m1Se7MjXKFYSJbUozs9vLQHwnojY
 gIhJE+9TJSUNxFdxmWItMrZwV0AACeZP93R0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9m/lkuEIL3LLHFQIEL7Od835CCLTn6kPwH6DJHDkn4M=;
 b=6E8koI0gkUV/TusL+4G5zTkonYJeagbM5TlV4mQqR5nk1pz+qZOL8OiY3KdDPGlA5O
 FgkAPnM5zgApoGRT/qytop+FIjE3umDTCVqcPex9mlA6x5sisXdseox9y8dd4K4u2bJ1
 4o8ewj+7ABm8GooeEMvawZP5Ug9EDWvG/cqBVtscNZF5Fs4CFTRa/GSUDEYAcWf+W3bw
 yCU434b7PKPSlOEZ7nOtrSN/qJI0hLCxO08EGqXOPrwg2EIw9jRxT9be8nes8sTlfc/t
 RGrkGdFKMdKC27/3JC8ey/dJLbN5CYiD1pOwUc9OEmLnCojXuRS2kZ5bHiuEJSJ9VU55
 y7HQ==
X-Gm-Message-State: AOAM532Qu5d4kpAMq77xQl1pMByHw1ltjLz9d/yajoS+b/V8magfF8Q9
 qE4CUj00Jwezlx/Yxvhquf/m7Va8MDOCbNWAnmlPmWjvapNna7UO
X-Google-Smtp-Source: ABdhPJxRDjJ4NSnoA3j9/YsaACazBQejRaX6kErzS5LOk15tIW3oAz9+2QzgrV8HQ2pmP5FRNDlm4iHs4SmEejOrhLc=
X-Received: by 2002:a05:622a:489:b0:304:c53b:afcf with SMTP id
 p9-20020a05622a048900b00304c53bafcfmr30117833qtx.351.1654757946841; Wed, 08
 Jun 2022 23:59:06 -0700 (PDT)
MIME-Version: 1.0
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Thu, 9 Jun 2022 08:58:41 +0200
Message-ID: <CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailman-Approved-At: Thu, 09 Jun 2022 13:51:01 +0000
Subject: [Intel-wired-lan] ice: Error setting promisc mode on VSI 6 (rc=-17)
 @ 5.18.x
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

I'm struggling with broken network connectivity at VMs using linux
bridge at host after update of kernel from 5.17.x to 5.18.x @ Dell
R750 server with E810-XXV NICs.

I noticed the kernel reports "Error setting promisc mode" in dmesg.

# dmesg  | grep 'Error setting promisc'
[   24.863557] ice 0000:31:00.0: Error setting promisc mode on VSI 6 (rc=-17)
[   24.878369] ice 0000:31:00.0: Error setting promisc mode on VSI 6 (rc=-17)
[   25.045834] ice 0000:31:00.0: Error setting promisc mode on VSI 6 (rc=-17)
[   25.129840] ice 0000:b1:00.0: Error setting promisc mode on VSI 6 (rc=-17)
[   25.144440] ice 0000:b1:00.0: Error setting promisc mode on VSI 6 (rc=-17)

# lspci -s 0000:31:00.0
31:00.0 Ethernet controller: Intel Corporation Ethernet Controller
E810-XXV for SFP (rev 02)
# lspci -s 0000:b1:00.0
b1:00.0 Ethernet controller: Intel Corporation Ethernet Controller
E810-XXV for SFP (rev 02)

It is easy to reproduce by:
  # ip link set em1 promisc on
  # dmesg -T | tail -n 1
  [Thu Jun  9 08:48:19 2022] ice 0000:31:00.0: Error setting promisc
mode on VSI 6 (rc=-17)

Could it be an 'ice' driver bug introduced in the 5.18 kernel?

Best,
Jaroslav Pulhart
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
