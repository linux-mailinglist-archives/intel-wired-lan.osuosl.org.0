Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F5613609D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 19:58:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47B5686CDB;
	Thu,  9 Jan 2020 18:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YQOdFaDbO-M6; Thu,  9 Jan 2020 18:58:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE81686D2F;
	Thu,  9 Jan 2020 18:58:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C86F11BF423
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB65588393
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CXIiPOQxtecy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 18:58:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6A67B88391
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:58:47 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c14so8548943wrn.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 Jan 2020 10:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6iluBswtA3GsGtDqPIpnnxl1+6uLOwie2wn5lFir1bU=;
 b=fXqa3/fZ9YO72RYs/z7OyjcgljvxooIiezVorJ5nXl+xzyrHXny2c5etRbuit90eTS
 2n9BWz67IwFIi+P1oOca1J2ss6CdNATbjgr6vGm/JkeowsboqsFZAoo/h1cCG8WUFkbh
 mozKBiedRmCGi3igvmoBRAfc2+smt3NKh2WlY9Bt8EicfPzRuECTbIwrk3Fz2qlWwgzG
 QSib7CC8zwRfrlO/LT3CEIVss15o0qqaIJcreU7XwR4i70XkJ6ytL0oldG/r+7598+Oy
 ZOBXf4cDPmGpBhbiP2UHNY3clajpWV3zHDSrk7wenimn25AFYFRKZg5UISI1w/FZ0WX+
 f1ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6iluBswtA3GsGtDqPIpnnxl1+6uLOwie2wn5lFir1bU=;
 b=UvgUlEv5R9aCZsiv1lndq6cqz6KJX6j4CyAGgCQlUnevzPB1cwDoQmCOT6SODTXssV
 mzwQzzGlPgo1ONni2NT3tF34dLk1cB8EbyiWy2os8dtdbujvlxpAvDOsSpFNfjnUYDRQ
 GUX2zzLal6GSJ2rABnomGJAT2MtrJXdLf054rRzVw/4nqaecNAsC2IFPgh8M2b0h5cEh
 zVl2MuvO86hU1TJ9mhtIeOsLhRN4mN87eONeA1W2v08ck/M1BbE21FKPT1Nu53/fKXTz
 FHxupYrqQ44oF5zRfwtTK2eFmmTgWRyjzkegUP2sGCch2kfRTksklviu4pYvK/NsehQl
 RurA==
X-Gm-Message-State: APjAAAWYlKOAD4S9Zzq5z4tWc/CZwMuwP+qDuYVbMpP7lYC2USFAGhE0
 PYPLYma9beiwdaRP6C/oNZEZ2w==
X-Google-Smtp-Source: APXvYqwfBSDZFdVL8TED2fjmKd2iL9mfSU2mj7/5nu8u0NFUAdGK888eF9ocw29WsWW0RucwAvsabg==
X-Received: by 2002:adf:ebc6:: with SMTP id v6mr674451wrn.75.1578596325381;
 Thu, 09 Jan 2020 10:58:45 -0800 (PST)
Received: from localhost (jirka.pirko.cz. [84.16.102.26])
 by smtp.gmail.com with ESMTPSA id u16sm3759700wmj.41.2020.01.09.10.58.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:58:44 -0800 (PST)
Date: Thu, 9 Jan 2020 19:58:43 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200109185843.GI2235@nanopsycho.orion>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
 <20200109010818.1326575-4-jacob.e.keller@intel.com>
 <20200109070502.GC2235@nanopsycho.orion>
 <aace193a-066b-ef8d-72a0-7489ba989d87@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aace193a-066b-ef8d-72a0-7489ba989d87@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 3/4] devlink: add support for
 triggering snapshots from userspace
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, valex@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Jan 09, 2020 at 07:50:23PM CET, jacob.e.keller@intel.com wrote:
>On 1/8/2020 11:05 PM, Jiri Pirko wrote:
>> Thu, Jan 09, 2020 at 02:08:18AM CET, jacob.e.keller@intel.com wrote:
>>> At region creation time, drivers may optionally define
>>> a trigger_snapshot function callback. If not defined, the
>>> DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT will simply report EOPNOTSUPP.
>> 
>> Similar mechanism is already implemented for health reporters. Why that
>> wouln't work for you?
>> 
>
>Mostly, I didn't feel that the necessary information (flash contents)
>really made sense as a health report. The intent is to enable diagnostic
>tools to read the contents of the flash on a device.

I see.


>
>I'm fine using the health interface but in this case features like
>recovery method, etc do not make sense at all as it would not be
>triggered in response to error conditions.

Okay. Perhaps this is a usecase to have the regions.

Anyway, this patch does like 5 things in one. Please split it in
multiple patches, each doing one thing.

Thanks!


>
>Thanks,
>Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
