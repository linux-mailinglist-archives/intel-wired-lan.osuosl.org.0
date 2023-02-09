Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A50690FC1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 19:00:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96153418C7;
	Thu,  9 Feb 2023 18:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96153418C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675965624;
	bh=QNASwx/oWK0iyrTYVbhm4Se1FfTsRAevYNetFfpZdW0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YM4Q33Px7pI581kqvY97vIVaVGZaccd+4qiLaQ965lLoIwu0Tl5QtXdIuSpbaGHUN
	 FLWv8klVIlsxIRjhDsIPXNuqoASricbw9IOOzu3G1PVq2OxH82ECs7as7yOA1D9xx6
	 wmPjVtoCejheIt9z7OEryr/X7Nte2lv5XGhYCMWSLqF/65TnifvS4K+f7CUGkP6/XC
	 xUaPLUywY3ZJ9pKf88yAuqVjkg2liGgYAt8XeEcOW2TORONqJZhHQ7JN51s8mCjLNI
	 n+0Z183IONQipD/94zzMJNsWD0cAoIl1SC7WlJ7JM5FbBk2256Hn9xdQ3HxnhPT0ZD
	 Jxdz/qftK1eUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jQ3OA8i5flAJ; Thu,  9 Feb 2023 18:00:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DF9B4185A;
	Thu,  9 Feb 2023 18:00:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DF9B4185A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A5631BF348
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 18:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 42E9F611E3
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 18:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42E9F611E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WmQx82tJyA5q for <intel-wired-lan@osuosl.org>;
 Thu,  9 Feb 2023 18:00:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A6C360F95
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A6C360F95
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 18:00:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C5EEDB8227A;
 Thu,  9 Feb 2023 18:00:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BDADC433EF;
 Thu,  9 Feb 2023 18:00:12 +0000 (UTC)
Date: Thu, 9 Feb 2023 10:00:10 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20230209100010.4a1f634c@kernel.org>
In-Reply-To: <a2af75b3-3dc2-0e83-558f-2b9a4ccfe5c7@intel.com>
References: <20230209160130.1779890-1-larysa.zaremba@intel.com>
 <a2af75b3-3dc2-0e83-558f-2b9a4ccfe5c7@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675965612;
 bh=hvb5u5PHA2QiRpKZ5qQF2hvV3sPOEQyZONS2dGB6vRw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DdM/JSMjjA9+W3xJZSCp4m5ffoWk4/ZOnd9JYKjUTyTKvWoE/dwsuxcaQDLFvAg71
 HNfCBFOdDk+f+YmM+BEZMZEn8V18b7uE8+hLV5hx7tWCgirOWWcDJyLa07kCl7blgN
 le/SFapCaEtywrfihYn1sMQIakrHg1l1gHqCxUHs4dxCxrziHNivBDG/RHZWPJBda/
 +rdSNWYpHRh7BAbrZqWPqnwoEnlusXTUqfjgLOw2N9RNY8iZex6g8YeV0bZR7y+0kN
 yUUBMaB8l58pzOynP6eHno/UXhnEq1L1D/pWgo62fXD+0mTKWw8Pe/h2aku4nx2P8e
 POnBnT6e3wzfA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DdM/JSMj
Subject: Re: [Intel-wired-lan] [PATCH net] ice: xsk: Fix cleaning of XDP_TX
 frames
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
Cc: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 9 Feb 2023 09:20:27 -0800 Tony Nguyen wrote:
> Since it's been tested and reviewed, did you want to take this directly?
> 
> Acked-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Sure thing! Already missed today's PR tho.. :(
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
