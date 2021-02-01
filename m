Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2691730B18E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 21:25:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD1FC864FB;
	Mon,  1 Feb 2021 20:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnMPq0a1GguR; Mon,  1 Feb 2021 20:25:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F065286713;
	Mon,  1 Feb 2021 20:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACA2A1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:24:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A753686B2C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x0T8uDsH6fNQ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Feb 2021 20:24:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8CF6786AD4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:24:08 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id 6so18049643wri.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Feb 2021 12:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j3SmGzx/9EOdlhzvPKiWPdfm2YAx1SRM88AT7v6eGFI=;
 b=tIZC5w0K4df/LksSV4uLtqigvjIeYt9PEg+bH1NBawWjUvCNvbDpMdY57j2gx0Yzcz
 JuAYf1/Rwi7q3TfwRptRbSc8iKdsdoSNsw2uyWIr4SQMRqzYGsNrn6OugwD99siJ9AFV
 trLAHgugKP1Xjt8uNP95T6uH6ofEyuf+KYmyzDoz4dHkZpWfphTZuxEF5rXbpHCCwxKP
 3KzmYdXTy8pl8PEgnyyQmsxQUimIZdyUriJdDoj11HbHL8kMVWSh/IPrsKB0bX0XAnOM
 0a3qlc9ir/cIPy7LKYBRzGWe59Ws5Q+iDA7Ui3Ir8aaZ5Rms2A9rMyyl7zNI0OkzD+jI
 hPeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j3SmGzx/9EOdlhzvPKiWPdfm2YAx1SRM88AT7v6eGFI=;
 b=tkG55ra2K5fliZWSfsMaDpd2tEtb0xpzuPbKXYfqtJac5MGvaSXXQwgRWCYrY8e7LE
 V8BRa51v5QV6O5PP7kVb75YP4WnDb0f6Y0NWZZ6sHhonuxScCSO1jHC9X6uiuw6xthNc
 8iA29EQGxY7o5DeKWc0hgutXlHthmVcAXgee1qJze12Jz7FF58Ukf9o0vbOhiYrSMpfO
 fPrEOoWHqIBTApASnZwLqYS+gVDLdlkjzkLc0fX+Wg3vF7j+trd3buYjIJ0RnE8Fp2vK
 y0GFpFXU+pH2AD2SL/fPR55Uqt2fo8GlnBZ6iZAhQKP2aiCUv4epHnnnCxoaRbgcfmk1
 ytzA==
X-Gm-Message-State: AOAM5328ndSNqBY+R/7OigZdefZcuDuZS/38+KWsk2OGZFBbK1FlwTcB
 khh+06D8FiVuu7NyESXzwrTPA64RlngCNZ7fpGQ=
X-Google-Smtp-Source: ABdhPJwQg+E1wuuuvQ9Kvzxw1kNzwIoDrzPD3DdBkXoXdzjB1cZ9P3/NWsWi66oIdCnvW5sHO6mgmfs2BYOi5k6z4z4=
X-Received: by 2002:adf:ce89:: with SMTP id r9mr20332352wrn.345.1612211046952; 
 Mon, 01 Feb 2021 12:24:06 -0800 (PST)
MIME-Version: 1.0
References: <20201221222502.1706-1-nick.lowe@gmail.com>
 <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
 <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
 <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <69e92a09-d597-2385-2391-fee100464c59@bluematt.me>
In-Reply-To: <69e92a09-d597-2385-2391-fee100464c59@bluematt.me>
From: Nick Lowe <nick.lowe@gmail.com>
Date: Mon, 1 Feb 2021 20:23:51 +0000
Message-ID: <CADSoG1vn-T3ZL0uZSR-=TnGDdcqYDXjuAxqPaHb0HjKYSuQwXg@mail.gmail.com>
To: Matt Corallo <linux-wired-list@bluematt.me>
X-Mailman-Approved-At: Mon, 01 Feb 2021 20:25:32 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Enable RSS for Intel I211
 Ethernet Controller
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I personally tested with mainline and 5.10, but not 5.4

Best,

Nick
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
