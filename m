Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED97C85A9AC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 18:15:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2437B60768;
	Mon, 19 Feb 2024 17:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5daLG61eJ8S; Mon, 19 Feb 2024 17:15:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B3EE60755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708362925;
	bh=gV3wjQ4zA6Qt8y8Dc+hWx/Hk0gCmsgyAQmmxpl97FQA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ia2jYBb/vzzXjPPQYAmsK+eCpgRvrfHf/lGzO6u2iVPLUNyHalXUrWK3zXKmC0E2x
	 H+ndmzWbCG74g2w4Mp9ygMbwjLBybRuuE/bN8cUV/r62wJOA409SQpSV/t7+bb3+Ly
	 sdg7b0EiHs4DfPcuAySKqpuC9hfuH6eKm6qKmXXTAllYlHXGk0bUyeyJe7YFsFO7yp
	 cgzzMZlKAIClaYzj/ziDLtoW0YlqQ7WTx67ITsWSO5NDrhl310MWFyR2+OX90upvjp
	 M3RDML21z2DYAJfX4TLqLQbNwQyBoXmcpu7iNg432jPfO0YM8PLfsmcyHzXHWD2GBP
	 ntdBsOH5nGYkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B3EE60755;
	Mon, 19 Feb 2024 17:15:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 316521BF342
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 17:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2951840B0A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 17:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NAxVLxBqxRtQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 17:15:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 53E9940B02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53E9940B02
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 53E9940B02
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 17:15:19 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-a3ed9cae56fso78806266b.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:15:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708362917; x=1708967717;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gV3wjQ4zA6Qt8y8Dc+hWx/Hk0gCmsgyAQmmxpl97FQA=;
 b=X61+Dbqx/t42KlIVC6w6gsjcaTnyD6nfUQ2v2HWNpSlsEBcw23C27Rjx6rSlqv5bmk
 gt1ilIGg67U9O0IFcNPa8kDl2wosHrAzi86VVnr7KaQruC3Klji7fXhWEL1d6ykmAuh6
 O7Cb3XwsNmY+grxFsOu75KqmMHP4bTE6kGKGTV8FZdGH5iBqLx8M0lzZmCnmWnpy1OpP
 mLhzxezs4Ato5BNk9AqSNKmO2kO03Fs7lcilV9Zq56H2fcjHJbf0u2eeGk91QdviUH5R
 8uEnFVZLL+sGLlmYVtK0UkzssoR5UpHjiZy/TdQKpBycb15LlmEfkJRbApKjX9VJ/Jac
 9KSA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWdAzCk6FTaz8h6BD5rsMwZHnG4gBsKXB0BzQ5snxXkuUzDgCo9FT25ePK8WW9fFuMNkAypz/Cn38WMA2m8er54RPoLdU7t7f4fyzTWoD0GXA==
X-Gm-Message-State: AOJu0Yx1f0IxOXs9fOMxOJydsO7meIAbUBUGvl8m8vfklBqtGCAw7FM3
 fEq/iu2FakU3fF1EimfzlaaLJUz3VNO6+8CPLPNCGZyqxuyJ6//v7xy7NvgB51s=
X-Google-Smtp-Source: AGHT+IF4rMbaI1FXxyl0+RFHp2+SjnFsMCU98DaaR35GvyDbT0D46kHdni2ArzHTlvliaFYchHpsng==
X-Received: by 2002:a17:906:b84f:b0:a3e:961e:722c with SMTP id
 ga15-20020a170906b84f00b00a3e961e722cmr2567019ejb.1.1708362917172; 
 Mon, 19 Feb 2024 09:15:17 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 vg8-20020a170907d30800b00a3d2fe84ff9sm3141033ejc.36.2024.02.19.09.15.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Feb 2024 09:15:16 -0800 (PST)
Date: Mon, 19 Feb 2024 18:15:13 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZdOMoX4gdQ18fRbr@nanopsycho>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
 <20240219100555.7220-5-mateusz.polchlopek@intel.com>
 <ZdNLkJm2qr1kZCis@nanopsycho>
 <48675853-2971-42a1-9596-73d1c4517085@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <48675853-2971-42a1-9596-73d1c4517085@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1708362917; x=1708967717;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gV3wjQ4zA6Qt8y8Dc+hWx/Hk0gCmsgyAQmmxpl97FQA=;
 b=xtZjXidtPCnep9yBOEZf9fVviLc0iLdYpmXU6b6qtMcNIgVCzkxawqWy9H34BBgbHA
 4/buqAtWWYJph9tR7KOI52/0E2lZv0cRnE/PQoSKImiEJ2wEdc78bJhSvnQ6RKeMqtKT
 MrcBdu+psE7LcNTUalVIo10F3DYYZcAiiGU6CjFGrkbG05OufZ7LpA7Hg7CjBMxIR2Gb
 Pi353GamtEKz23PPU5RdFn0RX/sdpygQdXeaY+3YvxR2XbkwQajXZyeoHcKBrj5m7rvQ
 Lcou0vGLkXrFkz+SpllcK/TwO1hcIhU6NSzX6q89XRfV5ghG53EVySwD2RoYoUgklrbT
 jkwA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=xtZjXidt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Feb 19, 2024 at 02:33:54PM CET, przemyslaw.kitszel@intel.com wrote:
>On 2/19/24 13:37, Jiri Pirko wrote:
>> Mon, Feb 19, 2024 at 11:05:57AM CET, mateusz.polchlopek@intel.com wrote:
>> > From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>> > 
>> > It was observed that Tx performance was inconsistent across all queues
>> > and/or VSIs and that it was directly connected to existing 9-layer
>> > topology of the Tx scheduler.
>> > 
>> > Introduce new private devlink param - tx_scheduling_layers. This parameter
>> > gives user flexibility to choose the 5-layer transmit scheduler topology
>> > which helps to smooth out the transmit performance.
>> > 
>> > Allowed parameter values are 5 and 9.
>> > 
>> > Example usage:
>> > 
>> > Show:
>> > devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
>> > pci/0000:4b:00.0:
>> >   name tx_scheduling_layers type driver-specific
>> >     values:
>> >       cmode permanent value 9
>> > 
>> > Set:
>> > devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
>> > cmode permanent
>> 
>> This is kind of proprietary param similar to number of which were shot
>
>not sure if this is the same kind of param, but for sure proprietary one
>
>> down for mlx5 in past. Jakub?
>
>I'm not that familiar with the history/ies around mlx5, but this case is
>somewhat different, at least for me:
>we have a performance fix for the tree inside the FW/HW, while you
>(IIRC) were about to introduce some nice and general abstraction layer,
>which could be used by other HW vendors too, but instead it was mlx-only

Nope. Same thing. Vendor/device specific FW/HW knob. Nothing to
abstract.


>
>> 
>> Also, given this is apparently nvconfig configuration, there could be
>> probably more suitable to use some provisioning tool.
>
>TBH, we will want to add some other NVM related params, but that does
>not justify yet another tool to configure PF. (And then there would be
>a big debate if FW update should be moved there too for consistency).
>
>> This is related to the mlx5 misc driver.
>> 
>> Until be figure out the plan, this has my nack:
>> 
>> NAcked-by: Jiri Pirko <jiri@nvidia.com>
>
>IMO this is an easy case, but would like to hear from netdev maintainers
>
>
