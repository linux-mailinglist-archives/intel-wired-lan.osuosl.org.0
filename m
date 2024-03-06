Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50583872D8C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 04:33:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D858060ECE;
	Wed,  6 Mar 2024 03:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fGPkL1aaz7ZY; Wed,  6 Mar 2024 03:33:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 182E860EB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709695990;
	bh=hA5anOLDf9hOII6ZL+mpHqZgQ3rs+L/N8KnCrTRwBMY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LEp0jQ52E2uCwQpoHEy+KZ7EHORT5KMsKFVZrLGDmA9kBGYYD8PrGeIhEhg3O9RhD
	 byBb76Jc1gQGFWXjLs8pPRejy0xGDEHzzLVZH0zDKOijUFycMeHtdX5X1QehXeNNBj
	 GeQMa80h2LnVwslPIOJeDDD6yMyPDH/sJ3aE+nmyHtcOcCm5JbWGdQjfTlXxFAS0bm
	 U/YmOulwkI4TqgUbeAaLwuSJ9cX9LY9SN2u37NrB5NbiJY9+fj+ZhSDBJjZ/Phk+fQ
	 9zIng1buW1uZLEjTjOBudON8iRiLFs+vMN9hrIIgROEjjfh6vr+6+xOdApSxCEM9Hy
	 w7mbLLDFtVnOw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 182E860EB6;
	Wed,  6 Mar 2024 03:33:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E54E91BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 03:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD124822BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 03:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EKcfo0DazLGn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 03:33:07 +0000 (UTC)
X-Greylist: delayed 430 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 Mar 2024 03:33:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D5C3382266
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5C3382266
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.202.169.39;
 helo=omta040.useast.a.cloudfilter.net; envelope-from=gustavo@embeddedor.com;
 receiver=<UNKNOWN> 
Received: from omta040.useast.a.cloudfilter.net
 (omta040.useast.a.cloudfilter.net [44.202.169.39])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5C3382266
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 03:33:06 +0000 (UTC)
Received: from eig-obgw-5002a.ext.cloudfilter.net ([10.0.29.215])
 by cmsmtp with ESMTPS
 id hfiSrKfYTl9dRhhulr965A; Wed, 06 Mar 2024 03:25:55 +0000
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with ESMTPS
 id hhukr672UTJ7whhulrgUiu; Wed, 06 Mar 2024 03:25:55 +0000
X-Authority-Analysis: v=2.4 cv=XcmPzp55 c=1 sm=1 tr=0 ts=65e7e243
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=VhncohosazJxI00KdYJ/5A==:17
 a=IkcTkHD0fZMA:10 a=K6JAEmCyrfEA:10 a=wYkD_t78qR0A:10 a=cm27Pg_UAAAA:8
 a=XVdhlGlpZy0Tqqe4dGwA:9 a=QEXdDO2ut3YA:10 a=xmb-EsYY8bH0VWELuYED:22
Received: from [201.172.172.225] (port=46818 helo=[192.168.15.14])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.96.2)
 (envelope-from <gustavo@embeddedor.com>) id 1rhhuj-001ukg-2u;
 Tue, 05 Mar 2024 21:25:53 -0600
Message-ID: <9c2990f0-7407-49c6-9e3a-b92de82ea437@embeddedor.com>
Date: Tue, 5 Mar 2024 21:25:51 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240306010746.work.678-kees@kernel.org>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <20240306010746.work.678-kees@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.172.172.225
X-Source-L: No
X-Exim-ID: 1rhhuj-001ukg-2u
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.14]) [201.172.172.225]:46818
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 5
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfCcFlCak5+Yadu2hQn6oa6siHdZk7iFNOrWp+1kKqTxioy9XSi04S91QN/5zIEAsnZqtL101ZfVVeIrvLzizwuK5ppIm7cJG8yb7Xw8c99nK7SsAOqd7
 EqWwjEnmSDIAijzjUGdEnsgF2IFE9MCAvMo6jX6NKVN7yf9AFQBOSPWHTowh18Q3mLGiuqY68O/xGiI6VK+vyLHwWM/a5S7F/jcUxcCWgN+K6sErmpkOhhbc
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hA5anOLDf9hOII6ZL+mpHqZgQ3rs+L/N8KnCrTRwBMY=; b=OgJGzG5urvOSye6X4o/ZpFKHHX
 TbW58mPd5ZZTTYRrOfSOsYbTltFxdq/haZS2WgK4RzIVvF6vv1E2KwmkmgVoaO8ts84sRaGGGLy4A
 JpAIy29MWILwYRBPY6ygZJ4Xb6JkMkR0A+20gaC9EyZPjW7qw9J/ld6ZpVB27UL+u2Dci3Tm7caLY
 5OAiRCHSdvKjD8WrqiQCXOTi3bKUV0622cYY7YWN3zFrPjmKNiCaL6qnNrlGk/iGjnlFYrTqYcKAm
 wU5U99v5vc0nvjAba/Ymv1j9eur9ovuP/TcwFBetIXAZgib48WQgdySJx0DyGVd/JeGNheFLMa1kv
 vArK3QuQ==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=embeddedor.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=embeddedor.com header.i=@embeddedor.com
 header.a=rsa-sha256 header.s=default header.b=OgJGzG5u
Subject: Re: [Intel-wired-lan] [PATCH] overflow: Change DEFINE_FLEX to take
 __counted_by member
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
Cc: intel-wired-lan@lists.osuosl.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 05/03/24 19:07, Kees Cook wrote:
> The norm should be flexible array structures with __counted_by
> annotations, so DEFINE_FLEX() is updated to expect that. Rename
> the non-annotated version to DEFINE_RAW_FLEX(), and update the few
> existing users. Additionally add self-tests to validate syntax and
> size calculations.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---

[..]

> +/**
> + * DEFINE_FLEX() - Define an on-stack instance of structure with a trailing
> + * flexible array member.
> + *
> + * @TYPE: structure type name, including "struct" keyword.
> + * @NAME: Name for a variable to define.
> + * @COUNTER: Name of the __counted_by member.
> + * @MEMBER: Name of the array member.
> + * @COUNT: Number of elements in the array; must be compile-time const.
> + *
> + * Define a zeroed, on-stack, instance of @TYPE structure with a trailing
> + * flexible array member.
> + * Use __struct_size(@NAME) to get compile-time size of it afterwards.
> + */
> +#define DEFINE_FLEX(TYPE, NAME, COUNTER, MEMBER, COUNT)	\

Probably, swapping COUNTER and MEMBER is better?

	DEFINE_FLEX(TYPE, NAME, MEMBER, COUNTER, COUNT)

Thanks
--
Gustavo
