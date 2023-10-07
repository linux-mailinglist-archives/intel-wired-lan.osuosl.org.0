Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B40F7BC6C8
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Oct 2023 12:30:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A97DA40AA4;
	Sat,  7 Oct 2023 10:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A97DA40AA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696674600;
	bh=hsulJEGOu+l8lt92QNrYp1r5Q4X4jBixjS5IIygsYvM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l8U1BNER+i6Efamx8M6ylco77yjhZgAHMtLCrCkJN6WxljOjYRBFo8aeg31iwiZsM
	 i4Vs7qK8zEWwhwDz0JIU3IxOHBEOgE/CnXHyDbsbsfkcQLzarlnktwxwdSBsLAwMAT
	 ukBce6xw5keWlVvMfkbJGhApiHc+XW7//lsC7CBvftuqT0nXIT7FNcVIXDpDdTj64J
	 8mT1+zeqzWYuSLIPUfLpVbr/PqrPgkjsquxEBiXpR5Gg2TNZdf8WjRw5/Vq+AHcd/v
	 rpMx1m1KiQvo9OOWN4dVyDP/5xiyCVL4/7A0EyPz3ZkQjlQ7y5+Al/+2CovkvJNImv
	 fK+hmxh4DRdyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KYuWQ3HG9NOZ; Sat,  7 Oct 2023 10:29:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 710EB400E7;
	Sat,  7 Oct 2023 10:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 710EB400E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47E7F1BF419
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 10:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29A8180E5F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 10:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29A8180E5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KslVjBqwVw7F for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Oct 2023 10:29:52 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DF2280E5A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 10:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DF2280E5A
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-32329d935d4so2605179f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 07 Oct 2023 03:29:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696674589; x=1697279389;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UG+hsX9hPN3W+5HioqXm2wenW+sadTD1b3Qm+tfgnSY=;
 b=f08psofVS5bOYqqHmCQdfQrmJE5ZiVM3JUxm8UknU9Z5GID+0xjdfJd9srkn8ZQXUD
 +XrmoT6gEpVE5EXXQP6p61Wmlw1k6lQBqyLHj6BJcbfc9J2WvrPxzVRZs2hKzHYRPp1v
 wL1uaMAIwbV5BsrsQmI9lswn4QnCO9CRwAOJrNFkf2qopdD9FEb0aGgP9V3m8B5N53DM
 VuVWwB5AL4aOHFHyRX1EPyOG3YmaiyDmlhWBAhq6EH9+UC/e2jlhaGpqn35BsohrI/rT
 izLHXAtiYdAwAmOCelAkbJn9jmro/khSFM8f5Atw4AeLdFlww4pzf2Fl64+iGryFZ/tv
 NlJg==
X-Gm-Message-State: AOJu0Yy+/aujAG1lgLS0M/0y46yk+ZoUT+Jw4C20Z+qpV0ddCv5RqP+m
 mbj4MkrWFWakgk/77PYLholPiw==
X-Google-Smtp-Source: AGHT+IFCuMFxbiqcnF20Qq6FWZXXKcM304kVgx1Fkg5wNG86dJ8nKaYsW62Ajy0W8xgkaauUSCLIfA==
X-Received: by 2002:a5d:6450:0:b0:315:ad1a:5abc with SMTP id
 d16-20020a5d6450000000b00315ad1a5abcmr9606048wrw.5.1696674589035; 
 Sat, 07 Oct 2023 03:29:49 -0700 (PDT)
Received: from localhost ([91.218.191.82]) by smtp.gmail.com with ESMTPSA id
 c6-20020adfed86000000b003279518f51dsm3920808wro.2.2023.10.07.03.29.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Oct 2023 03:29:48 -0700 (PDT)
Date: Sat, 7 Oct 2023 12:29:47 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Kuba Kicinski <kuba@kernel.org>
Message-ID: <ZSEzG0TpTI6W9+tL@nanopsycho>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
 <20231006114101.1608796-3-arkadiusz.kubalewski@intel.com>
 <ZR/9yCVakCrDbBww@nanopsycho> <20231006075536.3b21582e@kernel.org>
 <ZSA7cEEc5nKl07/z@nanopsycho> <20231006124457.26417f37@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231006124457.26417f37@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696674589; x=1697279389;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=UG+hsX9hPN3W+5HioqXm2wenW+sadTD1b3Qm+tfgnSY=;
 b=zyHS5XprHhXiuRLpSPsiA1rp0g7IB1XxfTIll3/9LESXru6TW2kgjbZEu06W7/UHXO
 mlFlDUZM7t6nguRdCPeO3+GfCaLIeI2rTnk2AdtGm8dkM7nJYY9s0s846dWes+Zw26V2
 igQ3JjBwPCDdt5YbuumTmSasAcGVvJOQzeOH/+NiaSSsfHiy/7zJ3qpmHuFk1ehmnla+
 AFhEH9PUan9nml3R0yUc1j+X2EpayltFCo+ngFncpNwBXa8BFhs2E5HBMD/N2EPXPo19
 B2ivPueDQBIfaAs6jpjOrmmw3NNvNvvK8rnx33hcEzEpjIk0vNU1xqCH1fXx32AcODIC
 oPEA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=zyHS5Xpr
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/5] dpll: spec: add
 support for pin-dpll signal phase offset/adjust
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Oct 06, 2023 at 09:44:57PM CEST, kuba@kernel.org wrote:
>On Fri, 6 Oct 2023 18:53:04 +0200 Jiri Pirko wrote:
>> Fri, Oct 06, 2023 at 04:55:36PM CEST, kuba@kernel.org wrote:
>> >> I'm confused. Didn't you say you'll remove this? If not, my question
>> >> from v1 still stands.  
>> >
>> >Perhaps we should dis-allow setting version in non-genetlink-legacy
>> >specs? I thought it may be a useful thing to someone, at some point,
>> >but so far the scoreboard is: legit uses: 0, confused uses: 1 :S
>> >
>> >Thoughts?  
>> 
>> I don't know what the meaning of version is. I just never saw that being
>> touched. Is there any semantics documented for it?
>> 
>> Kuba, any opinion?
>
>/me switches the first name in From :P

I messed up a bit. Kuba* confusion, sorry :)


>
>I think it basically predates the op / policy introspection,
>and allows people to break backward compat.
>
>drop_monitor bumped to 2 in 2009:
>
>  683703a26e46 ("drop_monitor: Update netlink protocol to include
>netlink attribute header in alert message")
>
>which breaks backward compat.
>
>genetlink ctrl went to 2 in 2006:
>
>  334c29a64507 ("[GENETLINK]: Move command capabilities to flags.")
>
>which moves some info around in attrs, also breaks backward compat
>if someone depended on the old placement.
>
>ovs did it in 2013:
>
>  44da5ae5fbea ("openvswitch: Drop user features if old user space
>attempted to create datapath")
>
>again, breaks backwards compat.
>
>
>I guess it may still make one day to bump the version for some proto
>which has very tight control over the user space. But it hasn't
>happened for 10 years.

But since by the policy we cannot break uapi compat, version should be
never bumped. I wonder howcome it is legit in the examples you listed
above...

Let's forbid that in genetlink.yaml. I have a patch ready, please ack
this approach.

Thx!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
