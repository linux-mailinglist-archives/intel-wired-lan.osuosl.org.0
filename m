Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B323CA089
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jul 2021 16:19:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5675406A3;
	Thu, 15 Jul 2021 14:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JEob8c6o1kFd; Thu, 15 Jul 2021 14:19:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2A21402BD;
	Thu, 15 Jul 2021 14:19:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0CB701BF399
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 02:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ECAED4011D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 02:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZmiPo6LhmMzA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jul 2021 02:34:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 333AD400E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 02:34:19 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 v32-20020a0568300920b02904b90fde9029so4623363ott.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 19:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q7hIjlSBVcaNYjNod+L81MaSkTH8TYHb/gTtAOF6jJo=;
 b=ZBsljYwRuvhrbEDuxSsBZPJHvWQRDU790+yd9diu9bhjvcbrjCs11eAzPFwb8sAFc1
 l3Tlzy6JZAHHvgx9yXMydp6838LmXocEvHEV+tVtZFTF10JLyqZcXT8GZa3ci0N1nGsA
 VJjQQFP+wIHf+C0M0xRXWe3WlJrTqafl4+iXBvcnRaQRaLsE10asUcqe90hWO0RDmPp6
 vahPIDk0H6y6LWPi9BBc/kciHPuLaDHfZvPzODOztVU+n8fAvl7yTSy+pXnhOEAbh0No
 ki6O7XMSL/FcqL0XiU416e9EGI/CRLa33iqZdMGlY79zHHIDLFQHLd7Q5/fVyU20mpso
 7bXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q7hIjlSBVcaNYjNod+L81MaSkTH8TYHb/gTtAOF6jJo=;
 b=n1u5cGGDLXt+s+XNYyH+s/3LH0niA3dW7uTaWi/imYezyjFWsh4U5V4mTAasRJME5d
 JTogbhTn4M1TPYtmKWXXDclVWpxZGZ3Gf46Pv5ur1HFhlpHoxI/1/u3hcPkyELbsJCwz
 JQhCNqfNQNemoVqOTHl+8Lu9SlBhhgW5+MbxeL1O4Ydtcal8yEyd37djUuUNRvD1SnNp
 dj7JbcUg4XCU5VFPF2n2BedmISxMHUVVfqf2sHNqVS+IJQDgKCdW53viqiruf4FnsnDk
 Slx8rGPaREoSYHf8fvOmpljdMWsIKzRgTx+bCsKT4UKBnq5ZZ/kQ4i18IhmEfE482UCj
 9hoA==
X-Gm-Message-State: AOAM533AGpuEiajHlpVMNykGitcij1wKTWvW4w2aUON8A2gu9Hx25zd8
 BmN6YX/kxfBUrd7Xh2CvON7TVzKuEOQTiiHi2v0=
X-Google-Smtp-Source: ABdhPJwQ4c8bBGOr9cTjRZ00J0YonoK1W5QubqFUgsmrA/tzA8zeo3mQv8ePNTcI9kGkhFWfkFkZXmAhnKuBTBaJMHQ=
X-Received: by 2002:a9d:4c9a:: with SMTP id m26mr1217555otf.110.1626316458173; 
 Wed, 14 Jul 2021 19:34:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210707094133.24597-1-kerneljasonxing@gmail.com>
 <CAL+tcoCc+r96Bv8aDXTwY5h_OYTz8sHxdpPW7OuNfdDz+ssYYg@mail.gmail.com>
 <03b846e9906d27ef7a6e84196a0840fdd54ca13d.camel@intel.com>
In-Reply-To: <03b846e9906d27ef7a6e84196a0840fdd54ca13d.camel@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 15 Jul 2021 10:33:42 +0800
Message-ID: <CAL+tcoAtFTmFtKR2QLY_UdQWkc9Avyw3ZtaA_cD_4cXAGXRBDQ@mail.gmail.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
X-Mailman-Approved-At: Thu, 15 Jul 2021 14:19:30 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: introduce pseudo number of
 cpus for compatibility
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
Cc: "songliubraving@fb.com" <songliubraving@fb.com>,
 "lishujin@kuaishou.com" <lishujin@kuaishou.com>,
 "ast@kernel.org" <ast@kernel.org>, "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "andrii@kernel.org" <andrii@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "yhs@fb.com" <yhs@fb.com>, "kpsingh@kernel.org" <kpsingh@kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "kafai@fb.com" <kafai@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "xingwanli@kuaishou.com" <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 15, 2021 at 4:52 AM Nguyen, Anthony L
<anthony.l.nguyen@intel.com> wrote:
>
> On Fri, 2021-07-09 at 15:13 +0800, Jason Xing wrote:
> > Oh, one more thing I missed in the last email is that all the
> > failures
> > are happening on the combination of X722 10GbE and 1GbE. So the value
> > of @num_tx_qp  the driver fetches is 384 while the value is 768
> > without x722 1GbE.
> >
> > I get that information back here:
> > $ lspci | grep -i ether
> > 5a:00.0 Ethernet controller: Intel Corporation Ethernet Connection
> > X722 for 10GbE SFP+ (rev 09)
> > 5a:00.1 Ethernet controller: Intel Corporation Ethernet Connection
> > X722 for 10GbE SFP+ (rev 09)
> > 5a:00.2 Ethernet controller: Intel Corporation Ethernet Connection
> > X722 for 1GbE (rev 09)
> > 5a:00.3 Ethernet controller: Intel Corporation Ethernet Connection
> > X722 for 1GbE (rev 09)
> >
> > I know it's really stupid to control the number of online cpus, but
> > finding a good way only to limit the @alloc_queue_pairs is not easy
> > to
> > go. So could someone point out a better way to fix this issue and
> > take
> > care of some relatively old nics with the number of cpus increasing?
>
> Hi Jason,
>
> Sorry for the slow response; I was trying to talk to the i40e team
> about this.

Thanks for your kind help really. It indeed has a big impact on thousands
of machines.

>
> I agree, the limiting of number of online CPUs doesn't seem like a
> solution we want to pursue. The team is working on a patch that deals

As I said above, if the machine is equipped with only 10GbE nic, the maximum
online cpus would be 256 and so on. For now, it depends on the num of cpus.

> with the same, or similiar, issue; it is reworking the allocations of
> the queue pile. I'll make sure that they add you on the patch when it

It's not easy to cover all kinds of cases. But I still believe it's
the only proper
way to fix the issue. Looking forward to your patch :)

> is sent so that you can try this and see if it resolves your issue.
>

Yeah, sure, I will double-check and then see if it's really fixed.

Thanks,
Jason

> Thanks,
> Tony
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
