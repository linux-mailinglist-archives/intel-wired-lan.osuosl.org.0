Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D27BF96F75F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 16:49:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C1A740BA3;
	Fri,  6 Sep 2024 14:49:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZWFijMXLg-jX; Fri,  6 Sep 2024 14:49:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D8D240B67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725634184;
	bh=IcOjLLAUe40dmYXU1IuXAgjJNanI+NlxPP0WO3jSjmM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CmPpXVGzOhBdiapKdncIbrvgJ/kJz8qeQBH1K3kM8aGtnxNS+suU0rkUbuuiTdlQl
	 xciWS2YFlSecDB2/d14ZN9Ppq/oa37yaVCZjR+3Jt89ahfpxhHDICTHgs1oAZ84M8q
	 tppGfETnOXkC5xq9nJ6KtC4hPWUPR7+euVxviIdsqZm1TFL+EyjxmWnxjKqsvVm8sL
	 oynQOJp2H6BcDHg2rOHh6Kd3LS9NZqMMotZ52yuSyP81Cl3Cu9V34j2XUHV/PT5Tpw
	 24m7DTZi3ncpGpz8QI86EMwFLCEbgF2e3x4hUFAiBQK+oq4KBYEydlnY9yiFnDafp6
	 A6ys0FHgOGAeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D8D240B67;
	Fri,  6 Sep 2024 14:49:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7F01BF575
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB2ED40424
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:49:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U7inFchpmIjl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 14:49:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E8A104018D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8A104018D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8A104018D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:49:40 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-128-wTV3Kd3dMZuhZCl-Q_Csfw-1; Fri, 06 Sep 2024 10:49:36 -0400
X-MC-Unique: wTV3Kd3dMZuhZCl-Q_Csfw-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42bb9fa67c5so15819955e9.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Sep 2024 07:49:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725634175; x=1726238975;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IcOjLLAUe40dmYXU1IuXAgjJNanI+NlxPP0WO3jSjmM=;
 b=HC1EKqTT+u/9TcSlr+PAdVAW1pXUdK0mVtJJUlo6yaJzz9xTsFs/aV84a7uFOaAg4/
 TCaUFHNYktOf0zy+tPC4G6lRmUXcQCk40yxSYRaiaUoe3lr+9nprMj8nwMOFrQLB20MQ
 xNy0eR5+qkFbyOGLJJhmvlW/FOV/NgmypI6lv/lSeEuXXigp7p4Q934naag5yOl/wWjk
 TpMHBGt5z0yx74I2rThFR/NNeW2eJ/qhZgn7xvzdsYM1p7iPWqVvxmOuCoi5179AAR1X
 GzTXnnRip+OusRtnnQyAe6parJynV8RL6SgqTgHnHajidQ/v+SCKg5OUoCncL5JmufgF
 1yog==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHdatnKhPqHpJspOeccc6qbct+4mydSvP8ZpvwaoCKLpAExA9Z0eNbE6gPgSGqo32Y8uxRjmR7Z2/yjOgFsT8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzUcX0VpxLveunDgaV8blfS6r0iiQvKfoZWOvgd/gzfhEJ8xd2n
 t+2errfnmmVTBRSGd0Gysue6PY1+g+QC6+ZIyOb/x660Zv/JzAluw1WVyXlnhsmvp2jZsUitRmi
 jK2ankhQPtAMuSlmPXKQI7FpP42t+IHkmRrNSgGwgXj+XUGnEYpvcqDywbwuu3CIlJno=
X-Received: by 2002:a05:600c:1c1b:b0:426:6f27:379a with SMTP id
 5b1f17b1804b1-42bb01b4c35mr202140935e9.13.1725634175037; 
 Fri, 06 Sep 2024 07:49:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH30rc1LnqRX1nDyjfK8MIZ3Y446lySjIxQolVtQW38LDKp/NAHPM/yeDTBxJie3QD7ySGPzQ==
X-Received: by 2002:a05:600c:1c1b:b0:426:6f27:379a with SMTP id
 5b1f17b1804b1-42bb01b4c35mr202140735e9.13.1725634174598; 
 Fri, 06 Sep 2024 07:49:34 -0700 (PDT)
Received: from [192.168.88.27] (146-241-55-250.dyn.eolo.it. [146.241.55.250])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42ca05d8a40sm23323535e9.37.2024.09.06.07.49.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Sep 2024 07:49:34 -0700 (PDT)
Message-ID: <896b88ce-f86c-4f00-8404-cedc6a202729@redhat.com>
Date: Fri, 6 Sep 2024 16:49:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paolo Abeni <pabeni@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1725457317.git.pabeni@redhat.com>
 <160421ccd6deedfd4d531f0239e80077f19db1d0.1725457317.git.pabeni@redhat.com>
 <20240904183329.5c186909@kernel.org>
 <8fba5626-f4e0-47c3-b022-a7ca9ca1a93f@redhat.com>
In-Reply-To: <8fba5626-f4e0-47c3-b022-a7ca9ca1a93f@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725634179;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IcOjLLAUe40dmYXU1IuXAgjJNanI+NlxPP0WO3jSjmM=;
 b=DmBpH2uD/OqgMfd628n+a+2yHA/9n3lZzvNkiMV2EtJYMYMxxgojLTuHL9m8djUtIbpakP
 6ncj+jUYtoo1OpMWRLZLzqT14RErsYQOYvvy4cSFGdUjPEaA+Ks16n4LxH2d81uvUf05xw
 BP0nroWvyNwZaANCXM0cHW4nWhCNiTc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DmBpH2uD
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 07/15] net-shapers:
 implement shaper cleanup on queue deletion
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/5/24 20:02, Paolo Abeni wrote:
> On 9/5/24 03:33, Jakub Kicinski wrote:
>> On Wed,  4 Sep 2024 15:53:39 +0200 Paolo Abeni wrote:
>>> +		net_shaper_set_real_num_tx_queues(dev, txq);
>>> +
>>>    		dev_qdisc_change_real_num_tx(dev, txq);
>>>    
>>>    		dev->real_num_tx_queues = txq;
>>
>> The dev->lock has to be taken here, around those three lines,
>> and then set / group must check QUEUE ids against
>> dev->real_num_tx_queues, no? Otherwise the work
>> net_shaper_set_real_num_tx_queues() does is prone to races?
> 
> Yes, I think such race exists, but I'm unsure that tacking the lock
> around the above code will be enough.
> 
> i.e. if the relevant devices has 16 channel queues the set() races with
> a channel reconf on different CPUs:
> 
> CPU 1						CPU 2
> 
> set_channels(8)
> 
> driver_set_channel()
> // actually change the number of queues to
> // 8, dev->real_num_tx_queues is still 16
> // dev->lock is not held yet because the
> // driver still has to call
> // netif_set_real_num_tx_queues()
> 						set(QUEUE_15,...)
> 						// will pass validation
> 						// but queue 15 does not
> 						// exist anymore
> 
> Acquiring dev->lock around set_channel() will not be enough: some driver
> change the channels number i.e. when enabling XDP.
> 
> I think/fear we need to replace the dev->lock with the rtnl lock to
> solve the race for good.

I forgot to mention there is another, easier, alternative: keep the max 
queue id check in the drivers. The driver will have to acquire and held 
in the shaper callbacks the relevant driver-specific lock - 'crit_lock', 
in the iavf case.

Would you be ok with such 2nd option?

Side note: I think the iavf should have to acquire such lock in the 
callbacks no matter what or access/write to the rings info could be racy.

Thanks,

Paolo

