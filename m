Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4FC19C69E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 17:58:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66E078806F;
	Thu,  2 Apr 2020 15:58:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JEtJRos3wPzy; Thu,  2 Apr 2020 15:58:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50B8F87969;
	Thu,  2 Apr 2020 15:58:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B70C91BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 12:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF4B988897
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 12:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N23wwb1-D7s2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 12:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EE96C88869
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585830712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b1iuEwMOCbdyBg0ZzUREMNzB1yA2no/SoVc43YelAqs=;
 b=gOS1oVNQMzxyzTI+xR/RFN6GXQAaMpe0PbgDno6xcDvzV034LvjY5o9umVqENcHtm44rhH
 HaBsfjaONkCTubjmnLrM/9PrzwJVSTX7gXkbzlSLGC7gJQ0v2LcGVh/a0973O9RhJ5jGMh
 F2F3cfPvKLidqWWl8qPY5fcdr/veyMA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-383-lhKg806OOH-rI7Gmqt-AmA-1; Thu, 02 Apr 2020 08:31:44 -0400
X-MC-Unique: lhKg806OOH-rI7Gmqt-AmA-1
Received: by mail-wr1-f70.google.com with SMTP id b2so1406443wrq.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Apr 2020 05:31:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=b1iuEwMOCbdyBg0ZzUREMNzB1yA2no/SoVc43YelAqs=;
 b=YoEkSuuMLHA06QTh8RP1neh1o71mgMjV0t7KrStJnPESrSAFBscU21ta1EIGfrmMkR
 E+TO0fOB5Y6NoIn9jlxlnupX6gUBKOorbU/zMFiElBk7J89TxSfdBKiAVSYUOs1VtpNj
 xm+V38eFzPt+/A/LFnMdOM1xXylhlrhT4UcEhEr8St3Zl5vdmPewIGMHnO8SMwBMfJ4K
 Hf/OVihjA77yq/seFMcCkr/xPohinheVKVtrCvCxxsSwHSUMehSaVUWwAbnS8NLCERxj
 hic8Oj2Wsc8gAmgESXprKQCcwiTVstEz6pZlQnShsHyPfA1HGS+rR03r6BvCr/tbMT0V
 7f/g==
X-Gm-Message-State: AGi0PublHqBYgpxJDf9zbXjcChM9ti+b5vO8ePjkojQd8AwRIyJYWbBI
 pcFbumF4tXcl7FftZE5TAqsgiUGeq6eM++4og7ncv/Ky+KKpg2uLIKum9gWN+tqn+PB7NUD5Jw1
 g5KB48N4iqcZHXywr7XiXk2elb8DAYw==
X-Received: by 2002:a1c:5502:: with SMTP id j2mr3329020wmb.93.1585830703721;
 Thu, 02 Apr 2020 05:31:43 -0700 (PDT)
X-Google-Smtp-Source: APiQypKeJkvlyzlxZHIlUhPY1uR/INkbvzSshkiu5u15mWxi8/IcJgopTZ/QYSyOkrZueWFFXMQn6g==
X-Received: by 2002:a1c:5502:: with SMTP id j2mr3328989wmb.93.1585830703329;
 Thu, 02 Apr 2020 05:31:43 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id h81sm7629471wme.42.2020.04.02.05.31.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 05:31:42 -0700 (PDT)
To: Aaron Ma <aaron.ma@canonical.com>, jeffrey.t.kirsher@intel.com,
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, sasha.neftin@intel.com
References: <20200323191639.48826-1-aaron.ma@canonical.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <4f9f1ad0-e66a-d3c8-b152-209e9595e5d7@redhat.com>
Date: Thu, 2 Apr 2020 14:31:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200323191639.48826-1-aaron.ma@canonical.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 02 Apr 2020 15:58:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 3/23/20 8:16 PM, Aaron Ma wrote:
> ME takes 2+ seconds to un-configure ULP mode done after resume
> from s2idle on some ThinkPad laptops.
> Without enough wait, reset and re-init will fail with error.
> 
> Fixes: f15bb6dde738cc8fa0 ("e1000e: Add support for S0ix")
> BugLink: https://bugs.launchpad.net/bugs/1865570
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>

I have been testing this bug because this is being reported against
Fedora 32 too:

https://bugzilla.redhat.com/show_bug.cgi?id=1816621

I can confirm that this patch fixes the problem of both
a X1 7th gen as a X1 8th gen no longer suspending after
a suspend resume cycle.

Not only does it fix that, before this patch the kernel
would regularly log the following error on these laptops
independent of suspend/resume activity:

e1000e 0000:00:1f.6 enp0s31f6: Hardware Error

These messages are now also gone. So it seems that the timeout
is really just too short.

I can agree that it would be good to better understand this;
and/or to get the ME firmware fixed to not take so long.

But in my experience when dealing with e.g. embedded-controller
in various laptops sometimes the firmware of these devives
simply just takes a long time for certain things.

This fix fixes a real problem, on a popular model laptop
and since it just extends a timeout it is a pretty harmless
(no chance of regressions) fix. As such since there seems
to be no other solution in sight, can we please move forward
with this fix for now ?

Regards,

Hans





> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index b4135c50e905..147b15a2f8b3 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1240,9 +1240,9 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
>   			ew32(H2ME, mac_reg);
>   		}
>   
> -		/* Poll up to 300msec for ME to clear ULP_CFG_DONE. */
> +		/* Poll up to 2.5sec for ME to clear ULP_CFG_DONE. */
>   		while (er32(FWSM) & E1000_FWSM_ULP_CFG_DONE) {
> -			if (i++ == 30) {
> +			if (i++ == 250) {
>   				ret_val = -E1000_ERR_PHY;
>   				goto out;
>   			}
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
