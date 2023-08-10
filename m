Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4547782F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 23:57:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 321EE40B6D;
	Thu, 10 Aug 2023 21:57:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 321EE40B6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691704670;
	bh=COqhJ7L2PqQIX5Fjg/t9aKf1XRczzat5GT2HOrvHk18=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rIsefRqKXD8f0jIwyLR/0+u8Y5IOOg8SBXxZ0icFkaeOUXypv8NCOGZEQJtNW3ifh
	 AxaOWkvDUrjb6Ic2EMEIv6HzQqlNZBhIcmdlx1U4dUE4kIETNVXWckFkcyOrTojrUd
	 F/lbcu7VirKWiGscZPhUpAsNb5/T/W31yn3SrPUlhQUulpNWd/cyfPp/QY207TlIbZ
	 gbZDeH1xsYeSVi8hCxdyJ3ROviI+meGqKmPl7ESI1q222iGlRFlxMU5KauvzWp740q
	 n7cU97v5ECmw+pwqwEwR2au52dNIXP7ZxxSY8k/5Qnu8RyaE2REOHedoK2V5xSxNJn
	 bj3EDpZOibIQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x9RSGM0V_1LL; Thu, 10 Aug 2023 21:57:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DE5D40A70;
	Thu, 10 Aug 2023 21:57:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DE5D40A70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12CB11BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DDCEB40A70
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:57:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDCEB40A70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 573UDyiymnk1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 21:57:43 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 10 Aug 2023 21:57:42 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEA3E400DC
Received: from omta040.useast.a.cloudfilter.net
 (omta040.useast.a.cloudfilter.net [44.202.169.39])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEA3E400DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:57:42 +0000 (UTC)
Received: from eig-obgw-5010a.ext.cloudfilter.net ([10.0.29.199])
 by cmsmtp with ESMTP
 id UD6bq8KjvyYOwUDY8qvBUr; Thu, 10 Aug 2023 21:50:32 +0000
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with ESMTPS
 id UDY7qttYLqqmzUDY8qplJG; Thu, 10 Aug 2023 21:50:32 +0000
X-Authority-Analysis: v=2.4 cv=b5ahX/Kx c=1 sm=1 tr=0 ts=64d55ba8
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=WzbPXH4gqzPVN0x6HrNMNA==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=IkcTkHD0fZMA:10 a=UttIx32zK-AA:10 a=wYkD_t78qR0A:10 a=NEAV23lmAAAA:8
 a=VwQbUJbxAAAA:8 a=1XWaLZrsAAAA:8 a=c7P8IOsjiO9zm4Xs_OAA:9 a=QEXdDO2ut3YA:10
 a=AjGcO6oz07-iQ99wixmX:22
Received: from 187-162-21-192.static.axtel.net ([187.162.21.192]:50906
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.96)
 (envelope-from <gustavo@embeddedor.com>) id 1qUDY6-000TYv-2k;
 Thu, 10 Aug 2023 16:50:30 -0500
Message-ID: <f4caa3f6-66d2-db44-0e21-900fe663da48@embeddedor.com>
Date: Thu, 10 Aug 2023 15:51:30 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Justin Stitt <justinstitt@google.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
References: <cover.1690938732.git.gustavoars@kernel.org>
 <52da391229a45fe3dbd5c43167cdb0701a17a361.1690938732.git.gustavoars@kernel.org>
 <20230810173404.jjuvqo5tv57en7pg@google.com>
 <20230810204953.wwwvbl57m3cebf27@google.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <20230810204953.wwwvbl57m3cebf27@google.com>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.21.192
X-Source-L: No
X-Exim-ID: 1qUDY6-000TYv-2k
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-21-192.static.axtel.net ([192.168.15.8])
 [187.162.21.192]:50906
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 3
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfLYm409/1o4qK2qv7cmiIfzpXVWtSM9oETw6fTZG5ITnkeblrip2SN73PN61u8qrJQgzdE24ENwVDuGjiNlDwET5UjWBFXYgVIg4/hYWCSDsxrJow0lj
 a/y4CAwHuQyDazQwcfZsQoeYoGOd27MKz4802HnOTIegINhiDn4JjeWV5WCHcN7WAzKypNTmH2icmlkeT5L+NKkOTlpUINTU/N8is/y7N9DvKvwi9MSE611O
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N4LwCmZmu8Qi0zP718AGZRcxN+/+SzgTW0w6lkTTTYk=; b=Hn1RBXsehMIa5WQqHhxt3DZ9KR
 wI/ZbhM9WFlcghBwguWxa3S6O7YL8pG9TqfCBoc9KI5P3CxX5o8czbQMVd9S7tng4lduHs8NakpRl
 OSKz+B3cnW4LhPURXxm/+LOwxuhZJFz25gZ2C8RgW38ntvoiHi4smFapEJmWnxyx9c92NnlbYC0h1
 znce0vhn5vGNuQTvg3M3I9Peff6kmmHGo1n9emL+JFx7P0C6oqF75daCJphSJ0msh1sBadtNf2Zeu
 nzMQev4Qlf1MeOFVb23y9SLd9e7QAk7ziTqqhr/O3isIeUCHP5jkORWNhfkf/pYDyV77VbGtvdXRS
 wHjTag8g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=embeddedor.com header.i=@embeddedor.com
 header.a=rsa-sha256 header.s=default header.b=Hn1RBXse
Subject: Re: [Intel-wired-lan] [PATCH 2/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_profile_segment
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/10/23 14:49, Justin Stitt wrote:
> On Thu, Aug 10, 2023 at 05:34:04PM +0000, Justin Stitt wrote:
>> On Tue, Aug 01, 2023 at 11:05:59PM -0600, Gustavo A. R. Silva wrote:
>>> One-element and zero-length arrays are deprecated. So, replace
>>> one-element array in struct i40e_profile_segment with flexible-array
>>> member.
>>>
>>> This results in no differences in binary output.
>>>
>>> Link: https://github.com/KSPP/linux/issues/335
>>> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
>>> ---
>>>   drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>> Tested-by: Justin Stitt <justinstitt@google.com>
> Whoops, this should be:
> Reviewed-by: Justin Stitt <justinstitt@google.com>
> 
> I did not test, I just verified there are no binary differences produced
> by this patch.

In that case, `Build-tested-by` seems more appropriate.

Anyways, the series has been applied already.

--
Gustavo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
