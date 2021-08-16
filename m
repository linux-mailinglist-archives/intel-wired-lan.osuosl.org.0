Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7ED3EE095
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 01:54:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CC80607AF;
	Mon, 16 Aug 2021 23:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cVtDo7o2VF61; Mon, 16 Aug 2021 23:54:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E3A2607BF;
	Mon, 16 Aug 2021 23:54:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B1E531BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A025A60706
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GPN1yFTW57ZS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 23:54:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7DE8F6058B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:54:42 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id n5so8565676pjt.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4PjLjvPfXT6Ggu3+t/3QP9ZYwtLwsOxNZwtphc9DHvg=;
 b=CSEOy5KO9iJTDIo3e37VnNXhTN22pbnAt5piZzqfDuw22OvJCuHL2liA37WQxtshTe
 2UPZFMEwEGj18zaR5Y6GNbhN7Spso/idQpqzlyjPjBcXMZ3pZZrG3kFQRFRqFwvgrAAc
 nDp1sxWDXoGO81ZpkgqudfjzNREc53948zr6wlsohTAX4mYRZF+6olvs2Sx3YfcianP2
 gMt6mP9Z1ySAFCV7OXZruILfMIuls0EfVEd25d8k/vpnTIsc0zjVF3JTh5Ricv1TfrpC
 ILxWHJxynUmswpwTU9c4KA7RCDx7YSIL1ZgdIjdyw3tvWqELDrvZio3LRRHiyk4P/BvD
 tT6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4PjLjvPfXT6Ggu3+t/3QP9ZYwtLwsOxNZwtphc9DHvg=;
 b=bnfHcKcuS51oiuwTB1YggLdzIN8HIRh48SlqqLNsNJgebgpfm5va5htvkuF78Bwuka
 4YribOSiOQqL16ps+lvn0TbTU8hvUYhlx6MBLUlUQBJ7+OMy02Mz2stfa4WKfirmv0tf
 xVDDW56dulzdEfdpI9WFzEJ8g/hyC1Nkp+RyYPzTK/Szmxky3rNprYGTW+1AwTHzxqnP
 yCKObDk09cOOFWs9KLQZkVOLbAks3pZVJhuTQ98Zez5gpPRLkqF8NM9R314pVN/F+e6d
 IwyXFEveJHxKCfPQOybJotjHiEt8fUxON7EWQXBBBmLx1OhxXWVOHzs+UtT/cIoIZT3E
 4Oew==
X-Gm-Message-State: AOAM532NZe7IycNBhfkd8j1x7taNoDaPnkN1tUmC427ZfFvtiNqFvEpc
 +Mkr/Jju5v8jNOmsMfFivJE=
X-Google-Smtp-Source: ABdhPJyR9MZhcHW80mqUzt9wrkKCjfK4t8KnWh9xQXq9WiK1alp/wk2DT4zGO9AZJak/kcTRB5Q51Q==
X-Received: by 2002:a17:902:fe82:b029:12d:61a2:3674 with SMTP id
 x2-20020a170902fe82b029012d61a23674mr511388plm.60.1629158082029; 
 Mon, 16 Aug 2021 16:54:42 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id 31sm316012pgy.26.2021.08.16.16.54.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 16:54:41 -0700 (PDT)
Date: Mon, 16 Aug 2021 16:54:38 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20210816235438.GB24680@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210816160717.31285-3-arkadiusz.kubalewski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC net-next 2/7] selftests/ptp: Add usage
 of PTP_DPLL_GETSTATE ioctl in testptp
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
Cc: cong.wang@bytedance.com, arnd@arndb.de, gustavoars@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, colin.king@canonical.com,
 nikolay@nvidia.com, linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, shuah@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 16, 2021 at 06:07:12PM +0200, Arkadiusz Kubalewski wrote:
> Allow get Digital Phase Locked Loop state of ptp enabled device
> through ptp related ioctl PTP_DPLL_GETSTATE.

So I think this should go into ethtool instead.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
