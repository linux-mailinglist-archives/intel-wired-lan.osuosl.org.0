Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0982DE7E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 18:13:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6906220412;
	Fri, 18 Dec 2020 17:13:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8jeevaAUcT3W; Fri, 18 Dec 2020 17:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BFBA22E315;
	Fri, 18 Dec 2020 17:13:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C759A1BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 17:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C2ADA87B05
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 17:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IX3Vi418T9Jb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 17:13:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5974187AFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 17:13:00 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id q22so4282008eja.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 09:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fB+vHjxlai7QhswbQoE7bsshRhh/AZ89fXOeQAVmkOE=;
 b=hA+XzH8K//2OgVRSALApx84Ol2Wa6pVraA7+Mn6kgCG9wzjVVXZYorLDfeVJWicg6e
 +uoANhiWSe9rc3PbaGqlCMOylupFDuMho2iXen14wr5qSZFs3GQXoK//pOwnN/kbUZ7B
 OJCVRW2vIvaxziYdzA+ntkiSJTyOF20F8wi4y2XB6EUk2CFLSs2yKnr+wCBQGcnpUw+q
 zAp1rLNOLDh1XBfSX0nZ0VDN+mu4zpyTbg4f/uwFfORJlMDK+ajEI3fCVotHbrtncCxA
 fU//YrVzCZuS+A3bNq8fH48y2hJszIAYFVuKWLqejRHLdFZLir0aaWhMK1Kz8oJWL/zg
 lwZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fB+vHjxlai7QhswbQoE7bsshRhh/AZ89fXOeQAVmkOE=;
 b=ABH5PvqI/w6MQLEP03a+Gq+Z6yZf48oyos3ModImk18pMZtC9G7dg0eLPeFAXzjDTk
 18Wg/Go1Lh4l9ktxWA5sQjUAyIagLVpZ8FBFc560AgM6NIDFvunGBCdsuL7QkfxGKXHl
 q3W8UgOSE5I3Q4QOi01sGyPbW48PBS1ufqWTdCwGwshwHiMdJJTX9DQekP+F08mRk+su
 CsHkJvo/VDxamuiVlXgFA0FU4iAaiuBehe5b8q8xP7FuWfHzWxTRPsSP7zO5OdjhaIBS
 XBiypY/JaF2Phw32jCqoB6m0fBDGYsF5VPcMLZbuiErcwDyJ8NVxrqrV+EgpUi2IzKSN
 EEkg==
X-Gm-Message-State: AOAM5314ASkwokUtbxZZVdPA5OU5Dr5StNvUAUPNeWgIcNHNffZN4c1E
 8z/Zksna9Xr8n65SuD8U9Y0xuUOMaDh8ZH1TvMrpwA==
X-Google-Smtp-Source: ABdhPJxYwBl4NRw4UjcHP/TX3Wr/IHncndi3WH6d/QDLG2IoZMY5nO8XOB3o8PQU61bR9ZT1EAtk5QG5ANfHp7e2AOg=
X-Received: by 2002:a17:906:4146:: with SMTP id
 l6mr4945173ejk.341.1608311578804; 
 Fri, 18 Dec 2020 09:12:58 -0800 (PST)
MIME-Version: 1.0
References: <CAKXUXMx7+DGUc4LLWa+BXAkgrp9bQxCQoo_c98RNxKtw69BTSg@mail.gmail.com>
 <CAPcyv4hqdiLci3xBa=UafJVec_YKZL2aw68DKgUf1RSz8BbFaw@mail.gmail.com>
 <CAKXUXMwEp=jfprB9T2vr+GeqBn8KkUFm3iOG2L9MFfUuN-5Cqw@mail.gmail.com>
In-Reply-To: <CAKXUXMwEp=jfprB9T2vr+GeqBn8KkUFm3iOG2L9MFfUuN-5Cqw@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 18 Dec 2020 09:12:48 -0800
Message-ID: <CAPcyv4gXZ1bV-ZKfPwuq+atHP1JKnuCCWmYQYF+3eBKfeN3uCA@mail.gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [Intel-wired-lan] Maintainer of ./drivers/dca?
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
Cc: "Paoloni, Gabriele" <gabriele.paoloni@intel.com>,
 intel-wired-lan@lists.osuosl.org, Shuah Khan <shuah@kernel.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 18, 2020 at 9:03 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
>
>
> On Fri, Dec 18, 2020 at 5:53 PM Dan Williams <dan.j.williams@intel.com> wrote:
>>
>> To my knowledge DCA is effectively abandoned ever since Chris Leech
>> and Shannon Nelson moved on to new roles outside Intel.
>>
>
> Thanks for the quick response; and too bad to hear that it is abandoned.
>
> But it is good as a potential user relying on that to know that it is not actively maintained. Maybe that is a motivation to get engaged, build some basic tests and grow towards becoming a maintainer for that small piece of code I (and my employer and its customers) could rely on in the future.
>
> If there is no other news, I will send a MAINTAINERS section marking it orphan for now, so everyone knows the current state.

I believe the replacement for DCA is DDIO.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
