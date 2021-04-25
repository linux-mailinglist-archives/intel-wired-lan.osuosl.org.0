Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2AA36C785
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Apr 2021 16:07:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6438040173;
	Tue, 27 Apr 2021 14:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zUD_UBLukiH1; Tue, 27 Apr 2021 14:07:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C42F40150;
	Tue, 27 Apr 2021 14:07:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6351BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Apr 2021 23:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A491D40239
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Apr 2021 23:09:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XBXCr8-5oDjo for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Apr 2021 23:09:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBD65400C3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Apr 2021 23:09:51 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id u3so2952582eja.12
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Apr 2021 16:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=u7D/ojmJZ37qasgr7Ko9GU5a0zvdevz01nK5apvh4RE=;
 b=BE3Y2Z28M//i3DE+n3QnN7qhcdrchjDJ/Pv3aW0o99XTAmwCFw/PGw/2oEl6zGMwxL
 xkZcoX3Sest8iNkheQVme90JoU9NwzN02iFbH5YR5t0NOMtB4p5p3c+APfGyxGNjCTPP
 DUm7P/0713KSwig6wcsmuotI70bFZvUp1slzyORM8+zdkTF91uF2RU4zI0lgUH/dPFUd
 yBe7IREVK56fDG2a6unOfPqnTQenPTHNIKj1X6HsYUNoynyflGw4xwp1dynib90/ZZNE
 gbkyoy9SfRFVHfdUn4bMUOfOp2/22keHljw9srrTSV2Js2BMHgpKmz0S5QBH9x7o/tm7
 Md3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=u7D/ojmJZ37qasgr7Ko9GU5a0zvdevz01nK5apvh4RE=;
 b=umUqg/+aQlLyWYXXxWtbfFWBZXJTmHeSVWzAmewBNyfyw0uZhIn9d4wG5gRAfV6GZY
 fE1VCiqGbIK3mzt5+68qL15PqtlNH/gAemtNSK7hK0aMebykzvR3+Z2U5Dq3uD8Isafm
 bWqo1pKsrtrn/A2LBHJVpyzrhZN/BuIE5wx/lvB7umUvF/SsLZosLRkGmj45fgDg4Ot8
 lFmTGG9ds6d2h5o7xpQxotbioHpuV+CxLHmlCt8SYwNfnquhwx6E28cbAeOfbeb/798D
 BvCqiwUrKH0Sar8uPwugPtW8+CjbXN6y2f/5U67BPtmJQ+ZaEssjkXtpvR8Dtpn/qjgt
 4zRg==
X-Gm-Message-State: AOAM532/Ub8Lg9JFoveweyPGAZH4/YhvpygeF6LDCtbvWRg+GRfw/ZdG
 3e/6sL+Q+AlXI9BYWp1BLnTUrb/ApfF5C5zfOSA=
X-Google-Smtp-Source: ABdhPJzJNB3O+udew+sU1cP/HJky7rP4GyPFYzmHeDq+GBtvoStPTFQZQr2EtgHNhUgfT/fAxcDxdDh63rTCCM0TLoc=
X-Received: by 2002:a17:906:a449:: with SMTP id
 cb9mr15461269ejb.118.1619392189843; 
 Sun, 25 Apr 2021 16:09:49 -0700 (PDT)
MIME-Version: 1.0
From: Tyler S <tylerjstachecki@gmail.com>
Date: Sun, 25 Apr 2021 19:09:39 -0400
Message-ID: <CAMfj=-YEh1ZnLB8zye7i-5Y2S015n0qat+FQ6JW7bFKwBUHBPg@mail.gmail.com>
To: kurt@linutronix.de
X-Mailman-Approved-At: Tue, 27 Apr 2021 14:07:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: Fix XDP with PTP enabled
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
Cc: richardcochran@gmail.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, bigeasy@linutronix.de, ilias.apalodimas@linaro.org,
 ast@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, lorenzo@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for this work; I was having trouble using XDP on my I354 NIC until this.

Hopefully I have not err'd backporting it to 5.10 -- but I'm seeing
jumbo frames dropped after applying this (though as previously
mentioned, non-skb/full driver XDP programs do now work).

Looking at the code, I'm not sure why that is.

- Tyler
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
