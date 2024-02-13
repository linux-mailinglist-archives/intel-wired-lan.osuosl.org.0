Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0FF852F47
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 12:28:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06D6940C20;
	Tue, 13 Feb 2024 11:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3dnDRkYK0hR; Tue, 13 Feb 2024 11:28:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 085DF40BDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707823710;
	bh=c0KsMl3OUOHVKyryv15HOu1hfiEpJzNqLTxDU6ueUs8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YxEOzgjgOgRyUUDHPf52w6YugXLaunZYnEo7O+qPAn2vUT1rgSgcQm4s+d4xHtAv2
	 iUk8cXSx1wQTofZ/d6jLTC+DMTKwqfKZidzigZrTbsq66lXU74Qqp0CCflWcmeiLu5
	 UJzE8fUQNNH/8MQhBkxZTAz+YXTUy8zx2OiiB4vQHU062kJHLJx7UcNcchD6Z23T6F
	 BH6tlTaC3RZVYxa/sNyceOwIilkfy1+Q7GPJ8j+TwmbEg4gjBQjpyg44bn4yXfhc/e
	 SQE/2AdqedeIG/XiQvAxvKXaoPU+okZuEuQDm9s0hg0P63av6y7IOb6OXn56fA3Xqk
	 SkAtS9/tXDGvw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 085DF40BDD;
	Tue, 13 Feb 2024 11:28:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7561BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB78381BA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ildRDR--_Thm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 11:28:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6304181B9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6304181B9D
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6304181B9D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:28:24 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-410e676c6bbso5516155e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 03:28:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707823703; x=1708428503;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=c0KsMl3OUOHVKyryv15HOu1hfiEpJzNqLTxDU6ueUs8=;
 b=n5Fey44bMlrHxUzmAwbiPubZXtCWPOrWCL9b69b/sbGs8dcidFccj64BJcl6vd6cRp
 LZxXzu3uUdk8UboPcLruRmOxX5lIQT5ZRVMqwvT1wD6Ggm/ZGbvkJ+b/6BJ8NbMOkG58
 +K3heyhAGYnfqFRB1AhzEySM4OCr+dmoWBF63xBTX+8geMP6SMESUKCPkLzMXciBV9JJ
 KZFNLf2b1xZ7zY/Dh7no96qka7skdmSVIsyT/HUO1boNftxlzyvQc3u+lFtvQWzYa/0N
 Q58IZwl8tk7atojupzDpMXTc19B7RCLkwlGQkSWG6am4IHUBwVOLVjeJ9FG1aqj6rK0s
 fXvg==
X-Gm-Message-State: AOJu0YyBwe6XZjrjAQEut0h+gBiLSrIBQfS4gAd13E2PBUEwRBMiRETt
 x08IYwFl9LcYSOu6wjnrFDLijH4tiEPEFn2MrjDQMM+Cl/bdD0skHe9zWYmUO0E=
X-Google-Smtp-Source: AGHT+IGOcSpHCRQQoYtjfQGfP5Z1eG7LPtLZ32xdQD3na646J9S2DUW8pa/E3Kq+ZmDyHCtiRSyszA==
X-Received: by 2002:adf:f6c7:0:b0:33b:81fa:ed8 with SMTP id
 y7-20020adff6c7000000b0033b81fa0ed8mr3380188wrp.0.1707823702900; 
 Tue, 13 Feb 2024 03:28:22 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCV4x34xtqUTcgCA0jVqo2tsEdax+/5mEZoZbQWb6bjtbUozgvIf7rc5xJFC/FsIaaFr+BmNUp2ulWtZb0KY9qQb/YorukS24M/EU0pguGth7vuLYLskeOQ95FQIqPcCAXwgUpnogj4E10l1qDdFbGpqSGNP2+cJZbdcjEzHBjW+6bA4+DEIch/BRfYNaEHu6ga3jZzBpmrg1k2gR9BoWNuVlqtj5Z3mUGWvHa0dOBpXBi0pKTwMXSrft87deYMvAbHPZegLakVtJSjB/v2myTgpQA7zjLex3k5WK8NP6ceZrAOfRRIHN3ChgQ2IHhXKVmg4asVpVeKCpFw2mhBI0W1MOapqv9ona1roJptjofE++8cijgn9jye4JKEXRTzkmt7r+NvhjAuxxU7Bc7jK+h6o4Oc5
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 c1-20020a056000104100b0033905a60689sm9272579wrx.45.2024.02.13.03.28.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 03:28:22 -0800 (PST)
Date: Tue, 13 Feb 2024 12:28:19 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZctSU2cJHVwPhyhZ@nanopsycho>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-7-michal.swiatkowski@linux.intel.com>
 <Zcsu6MCX-XkS8bki@nanopsycho> <Zcs5pFtmXzTxWO5s@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zcs5pFtmXzTxWO5s@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707823703; x=1708428503;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=c0KsMl3OUOHVKyryv15HOu1hfiEpJzNqLTxDU6ueUs8=;
 b=NeCdQVEUOxdh8IC7tqEAQQuyafjDCFYJSqrZ3eMXFhUsBhjp9o+8Z2llXo+e2E3RCB
 QdJEdjAMf/mXjd6AGar78YUCigLO/Jp+RKGl9sFjypPFop59ltxu9/prwxyrkUftjuZg
 d0jSS3hrj5ZzdCWYuS8nhYG0kIcNNAIIzyYmndx8ZncQq6FtxEBVwbrDWF2K+lVoXFcM
 MvqbTSBswz4LSEdCu2/X8zK+8Cdc/TeVfP7SmkNJnA1hUkkNkxtFrDC7yi4XdVpr8mQf
 7C0tJmGdQ6YwJ9FAT3MbJEe1Qm9SX2A/PlHnZVhmN/Jaz1v75rDKCs9OUbUJKCL8D6C6
 DDVQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=NeCdQVEU
Subject: Re: [Intel-wired-lan] [iwl-next v1 06/15] ice: add subfunction aux
 driver support
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 10:43:00AM CET, michal.swiatkowski@linux.intel.com wrote:
>On Tue, Feb 13, 2024 at 09:57:12AM +0100, Jiri Pirko wrote:
>> Tue, Feb 13, 2024 at 08:27:15AM CET, michal.swiatkowski@linux.intel.com wrote:
>> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> >
>> >Instead of only registering devlink port by the ice driver itself,
>> >let PF driver only register port representor for a given subfunction.
>> >Then, aux driver is supposed to register its own devlink instance and
>> >register virtual devlink port.
>> >
>> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> >---
>> > .../intel/ice/devlink/ice_devlink_port.c      |  52 ++++-
>> > .../intel/ice/devlink/ice_devlink_port.h      |   6 +
>> > drivers/net/ethernet/intel/ice/ice_devlink.c  |  28 ++-
>> > drivers/net/ethernet/intel/ice/ice_devlink.h  |   3 +
>> > drivers/net/ethernet/intel/ice/ice_main.c     |   9 +
>> > drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 214 ++++++++++++++++--
>> > drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  21 ++
>> > 7 files changed, 302 insertions(+), 31 deletions(-)
>> 
>> Could you please split this. I see that you can push out 1-3 patches as
>> preparation.
>
>Do you mean 1-3 patchses from this patch, or from whole patchset? I mean,

This patch.

>do you want to split the patchset to two patchsets? (by splitting patch

Yes, 2 patchsets. If convenient 3. Just do one change per patch so it is
reviewable.


>from the patchset I will have more than netdev maximum; 15 I think). 
>
>Thanks,
>Michal
