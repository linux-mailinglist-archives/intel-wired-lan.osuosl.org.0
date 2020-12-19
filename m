Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9B82DF1B4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Dec 2020 21:59:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91E0E86D2F;
	Sat, 19 Dec 2020 20:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5+mrf8gd+jha; Sat, 19 Dec 2020 20:59:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6B5686DF8;
	Sat, 19 Dec 2020 20:59:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 010B21BF20F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 20:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB82B20398
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 20:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bVm8CFVapEuo for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Dec 2020 20:59:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by silver.osuosl.org (Postfix) with ESMTPS id 7617C2034B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 20:59:38 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id h205so14452724lfd.5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 12:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+k+ujggqUTvxy3MB1Q6zrA1H1dw+aXsOR/YRXOvXhyM=;
 b=QektH8aCIKUARsO+RGKfSId99/uIpySlGmjvSZB/QNXZsgdC0qxZwNmhY3gWlgAXd3
 kSpsYg2ERgYWmP79mXtmY6FvMQ3oyAqxjliL7GdJ8WIOswJr9eVDuAvdq4TnVFkgmMJX
 TwZWzIdmSTMdmv40PxXxT9I2Y3b7oaUBwnTaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+k+ujggqUTvxy3MB1Q6zrA1H1dw+aXsOR/YRXOvXhyM=;
 b=Cc5KhNXlik8Jryq2K3H+EmsNNxCyyytCg57pjKlWTNPhXhJKdkmDaFj2rhlLFhslsA
 jGXSl3KJkYQjZfOlPwcTo0tq5NxuJqFkZds9CyM8SFxytQ1PNvg3FeOtIKalI3N6Nblo
 QADI/0xuiVd0VZRuDk2O+b4bR8b1sdE2WH1WYhaFu6PaG5CCiWNoSGXuRzp8KcPEFews
 i4rRvpauhH6jRgdRxsM38IWjwTFDQOOQ8p63Rgm4vWaf8dOemLExBg0XzZ74IxIEqUxr
 cwlJdnMaYJBxXB+2fQmBU16CxTp/v9CUeWf8JR1WZuppYznApkV/kZVk2pjKfjR+LXDQ
 L/sw==
X-Gm-Message-State: AOAM531cLFCfXMsyaFC44Dg14emue+RDEY7zO2SPwOjBLhdDaTYNPNo+
 mZU2nAkEw/HV0N+kDlCa71VLKX7gJkAbZQ==
X-Google-Smtp-Source: ABdhPJwptPlIQlRPJI9HBLc3LWuia0sUkCaV4RdgsVOgpcKDP4BEQY6nMqT8hNA8szq1dFVtS6We2Q==
X-Received: by 2002:a19:7906:: with SMTP id u6mr3640151lfc.632.1608411576065; 
 Sat, 19 Dec 2020 12:59:36 -0800 (PST)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com.
 [209.85.167.48])
 by smtp.gmail.com with ESMTPSA id q15sm1550788ljh.136.2020.12.19.12.59.34
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 19 Dec 2020 12:59:35 -0800 (PST)
Received: by mail-lf1-f48.google.com with SMTP id y19so14339845lfa.13
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 12:59:34 -0800 (PST)
X-Received: by 2002:ac2:41d9:: with SMTP id d25mr3447738lfi.377.1608411574392; 
 Sat, 19 Dec 2020 12:59:34 -0800 (PST)
MIME-Version: 1.0
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <86fb482f-81b0-8a5f-1580-ed5b6f13c743@molgen.mpg.de>
 <MN2PR11MB361416A8BFB904EC0149C178EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
In-Reply-To: <MN2PR11MB361416A8BFB904EC0149C178EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 19 Dec 2020 12:59:18 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiCOBCW-eKVuag6FOjarYnYAG8E2Rak2Qn2=qYJBjCTgA@mail.gmail.com>
Message-ID: <CAHk-=wiCOBCW-eKVuag6FOjarYnYAG8E2Rak2Qn2=qYJBjCTgA@mail.gmail.com>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Subject: Re: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps
 link negotiation?
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Tyl,
 RadoslawX" <radoslawx.tyl@intel.com>, Greg KH <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Dec 19, 2020 at 8:07 AM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
>
> I am stripping the maintainers because they're on the mailing list already and multiple copies of the same email means they get annoyed and likely ignore the email.

Don't do that. This is what "Message-ID" is for. People don't get
multiple copies of the email, because any sane MUA will see that they
are the same message even when they came in through two different
paths.

Of course, if some maintainer has a broken MUA, that's one thing, but
I would expect kernel maintainers that deal with a lot of email to not
have quite _that_ broken a setup.

            Linus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
