Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8FEB2115E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 18:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07F87411C9;
	Mon, 11 Aug 2025 16:16:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gO0Dv6zuHN69; Mon, 11 Aug 2025 16:16:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 598EE411CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754928998;
	bh=dBTQ/TlTb6tmtqhEpFdAkTjWlfA/en264UPaQXZjsno=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iqDFac1GD8ZkkzTKmdds/bajbVAS+CedqAGnDImUY5s/vPu3lP/ebEGrVVJtH5tkX
	 Ppo9h8sSxmsb1Ayq6ZoVrYbZFvtYjIo7JSLLXcH/hkf3Z5AVGvqiKaVwcgya2CAAU5
	 bXxHjxD/aNi2LJXZUX3gan+Fy5/dVQH4vv8kg7wYfnAOeBo4dUTN5pm5WNskbhJ5YY
	 GrUW6MZElxmN9S39cMt9WqaQrKzojowr4CXnnVIPZCcqOhIUzlID9/BWGlppqyTApt
	 HlMv+CtRraiWs5rGiZjPC26vH5igB/JYaUZubKeqx+n3+7DmKtfJCil+onIDWfBvpX
	 GSP8tk0+xQ4Kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 598EE411CB;
	Mon, 11 Aug 2025 16:16:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A89369E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99D096143E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:16:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dEVWEzJjuFyM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 16:16:36 +0000 (UTC)
X-Greylist: delayed 475 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 11 Aug 2025 16:16:35 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B3CDD60EB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3CDD60EB8
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.189;
 helo=out-189.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com
 [91.218.175.189])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3CDD60EB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:16:35 +0000 (UTC)
Message-ID: <34da824b-1922-418f-953f-99287443b088@linux.dev>
Date: Mon, 11 Aug 2025 17:08:34 +0100
MIME-Version: 1.0
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Carolina Jubran
 <cjubran@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
References: <20250807155924.2272507-1-vadfed@meta.com>
 <20250808131522.0dc26de4@kernel.org>
 <ec9e7da6-30f0-40aa-8cb7-bfa0ff814126@linux.dev>
 <20250811084142.459a9a75@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250811084142.459a9a75@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1754928517;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dBTQ/TlTb6tmtqhEpFdAkTjWlfA/en264UPaQXZjsno=;
 b=M6T5Xvji5GkxwoqdFCtbl5IA5oblvaWz9wJ4eM7PN/ADfC2dQs6ANZyoGUeFUuxINIggVb
 nE0zsblmu+1Zgb02MIZ1fIGWHPu39Fg3dgiYFC8bNwGxGo42MIG3w8m6cbsZJWw7leLV9H
 T1uGmrOqtOh98ghB33C22sXf7I6HRx4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=M6T5Xvji
Subject: Re: [Intel-wired-lan] [RFC PATCH v4] ethtool: add FEC bins
 histogramm report
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/08/2025 16:41, Jakub Kicinski wrote:
> On Sun, 10 Aug 2025 11:52:55 +0100 Vadim Fedorenko wrote:
>>> TBH I'm a bit unsure if this is really worth breaking out into
>>> individual nla_puts(). We generally recommend that, but here it's
>>> an array of simple ints.. maybe we're better of with a binary / C
>>> array of u64. Like the existing FEC stats but without also folding
>>> the total value into index 0.
>>
>> Well, the current implementation is straight forward. Do you propose to
>> have drivers fill in the amount of lanes they have histogram for, or
>> should we always put array of ETHTOOL_MAX_LANES values and let
>> user-space to figure out what to show?
> 
> Similar logic to what you have, you can move the put outside of the
> loop, let the loop break or exit, and then @j will tell you how many
> entries to fill..

I see. Fair, I can do it. After this change there will be no need to
change the code in the reply size calculation, right?
