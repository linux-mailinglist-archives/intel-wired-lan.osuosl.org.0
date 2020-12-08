Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E462D2B28
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 13:35:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 77DB086CF4;
	Tue,  8 Dec 2020 12:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UpFK7SzbysA6; Tue,  8 Dec 2020 12:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61B4986D6B;
	Tue,  8 Dec 2020 12:35:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9C761BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 12:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C51CC870A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 12:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tkWCj-YWWvD0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 12:35:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 53EB887138
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 12:35:27 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id i3so10200251pfd.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Dec 2020 04:35:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EkfXy1UkRv4cSqL2k3sSEC/FcDWBzE3f37JAyWXWp1w=;
 b=PmeWAELjFHrUaHQkicK+R0kkquEF7Qtk5tUBYrHb4eZz4v6y5eO9+/mhkN03uUsiBq
 TAP7o6zfdV+XA8vjgQ3a2W9YPJu7cHuvy+PeCC0nbPRhB3fAK3q5gBA7aMEgC4aQJRRj
 ELmPmf2QBuaYNTSUZf7IsPK8LBfi24px96HJN54+xA7D1btFZwjHiGKSXkvSSliBT31N
 1yj0PintH3YK7NAceUzzasKqyE1RyuO8r3cgyA2R0J0oEEEQOnks+XgoUiZgQVg4vpZV
 uBxxyMu3ID3oA1Kx3HjBxTa6udmuJlBYe9wNuGPQkecFjvAMOvr/myTosBijE6iSBhkc
 4p6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EkfXy1UkRv4cSqL2k3sSEC/FcDWBzE3f37JAyWXWp1w=;
 b=BPdaRoF+m9UYBOG/4NGh542RfWwgQcDCUn6VMzeWiR8SNw7w59YFZgH9zYfEDXUI6s
 NpQG+zjAoSZoGX8Iqv6MqvwlUsonB0cKOBMMCw6vi6Qid4fEEa2cfxjEtGWN5NUiqmcV
 goNwdwmgjnWifCilfxd2Hi7c1aQEUS+nR7R+lTqyA26Q2Wbckz4AguHBEGtRNEnrQrp5
 lKr8Y8tK5bXNR1g7iw2ljWiEMmT4VgrlYpmmEgovsDMuNF0eknV0MZp2te260ua0BV9P
 nrtLVr/EWypEKNxmQzeexTbtBJIc1FTmhoaB95wG9i9VmJBzjZeI4vTfrrxyszCeYD55
 u84w==
X-Gm-Message-State: AOAM530HbteciI+WeOg1SBDXX69efDD30k2trlix7IiPXNgUW5usSIQN
 5Ok+Gi/SAItjgXyxItm1oY4=
X-Google-Smtp-Source: ABdhPJz2GZPx9xLWPqIqOsYhCznRvwVpfuz0T64UR6Jfdv9VELe6YVX1ls5S0IfctpqkRMNgidj9Fg==
X-Received: by 2002:a05:6a00:228a:b029:18b:212a:1af7 with SMTP id
 f10-20020a056a00228ab029018b212a1af7mr20118201pfe.55.1607430926975; 
 Tue, 08 Dec 2020 04:35:26 -0800 (PST)
Received: from hoboy.vegasvil.org (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id z7sm7558074pgz.43.2020.12.08.04.35.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 04:35:26 -0800 (PST)
Date: Tue, 8 Dec 2020 04:35:23 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20201208123523.GA17489@hoboy.vegasvil.org>
References: <3dcb78c0-b4cf-8686-20d6-3cd766e7fb1a@molgen.mpg.de>
 <20201208154119.106511-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201208154119.106511-1-piotr.kwapulinski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH v8] i40e: add support for PTP external
 synchronization clock
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, pmenzel@molgen.mpg.de,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 08, 2020 at 03:41:19PM +0000, Piotr Kwapulinski wrote:

> @@ -145,14 +398,35 @@ static int i40e_ptp_adjfreq(struct ptp_clock_info *ptp, s32 ppb)
>  static int i40e_ptp_adjtime(struct ptp_clock_info *ptp, s64 delta)
>  {
>  	struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
> -	struct timespec64 now, then;
> +	struct i40e_hw *hw = &pf->hw;
>  
> -	then = ns_to_timespec64(delta);
>  	mutex_lock(&pf->tmreg_lock);
>  
> -	i40e_ptp_read(pf, &now, NULL);
> -	now = timespec64_add(now, then);
> -	i40e_ptp_write(pf, (const struct timespec64 *)&now);
> +	if (delta > -999999900LL && delta < 999999900LL) {
> +		int neg_adj = 0;
> +		u32 timadj;
> +		u64 tohw;
> +
> +		if (delta < 0) {
> +			neg_adj = 1;
> +			tohw = -delta;
> +		} else {
> +			tohw = delta;
> +		}
> +
> +		timadj = tohw & 0x3FFFFFFF;
> +		if (neg_adj)
> +			timadj |= I40E_ISGN;
> +		wr32(hw, I40E_PRTTSYN_ADJ, timadj);
> +	} else {
> +		struct timespec64 then, now;
> +
> +		then = ns_to_timespec64(delta);
> +		i40e_ptp_read(pf, &now, NULL);
> +		now = timespec64_add(now, then);
> +		i40e_ptp_write(pf, (const struct timespec64 *)&now);
> +		i40e_ptp_set_1pps_signal_hw(pf);

This enables a 1-PPS hardware output unconditionally?

> +	}
>  
>  	mutex_unlock(&pf->tmreg_lock);
>  

> @@ -839,6 +1492,8 @@ void i40e_ptp_init(struct i40e_pf *pf)
>  		/* Restore the clock time based on last known value */
>  		i40e_ptp_restore_hw_time(pf);
>  	}
> +
> +	i40e_ptp_set_1pps_signal_hw(pf);
>  }

Here again the 1-PPS is enabled unconditionally.

Instead, why not allow the user to enable/disable this?

There is a new ioctl variant designed for periodic outputs like a PPS.

Bits of the ptp_perout_request.flags field can contain:

 PTP_PEROUT_DUTY_CYCLE
 PTP_PEROUT_PHASE

You can enable the PPS when they are present in the request.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
