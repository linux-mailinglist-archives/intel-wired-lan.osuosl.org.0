Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9A090BC29
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 22:29:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8306760A81;
	Mon, 17 Jun 2024 20:29:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aU9Hp8DsZHpf; Mon, 17 Jun 2024 20:29:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6451F60A89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718656190;
	bh=V2YXDMhtvbSVNoWbnS06L57XMeVYDy8Hsl6YjPjUzaw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qe5ldG4wcokQHCvzyXl/JxzGe1EF84abm/HF8/uekLLL1ocnD8Frlbf7zCAetStqf
	 PB4PunM+3Z3sH4vjeuecPlKsCYhakLTpOJ3WTjwuYrwKWHfrWpPF1mQltF9B5lkZvA
	 s8AD1dleuf16a/5rsp+BFb2gIssyLuYSng7AUqLC2tUXkX8yTO3hZB32142vqK6JMc
	 FbWpf29aGG7x8VMQPNYwfFSxHQiclvfRW2ddyDR3Oz8vFaYtWWBa6dG1iuzQqckkLf
	 lfxgJdkzBqeHNUlTblbs1dOj0LtUM/G2gpm8u+XwujXcSccZA/gpCtls3jXab8o5au
	 bpzqZFmKW/+fg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6451F60A89;
	Mon, 17 Jun 2024 20:29:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 973E41BF290
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 20:29:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82880401D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 20:29:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0p3Dja9iC__R for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 20:29:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B1509400BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1509400BB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1509400BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 20:29:44 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af4ad.dynamic.kabel-deutschland.de
 [95.90.244.173])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5C46B61E646D0;
 Mon, 17 Jun 2024 22:29:29 +0200 (CEST)
Message-ID: <2dcd7086-5b7e-4582-9e70-358015ca2b89@molgen.mpg.de>
Date: Mon, 17 Jun 2024 22:29:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20240617190759.2378532-1-jesse.brandeburg@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240617190759.2378532-1-jesse.brandeburg@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] MAINTAINERS: update Intel
 Ethernet maintainers
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jesse,


Am 17.06.24 um 21:07 schrieb Jesse Brandeburg:
> Since Jesse has moved to a new role, replace him with a new maintainer
> to work with Tony on representing Intel networking drivers in the
> kernel.

Maybe add the names to the summary/title:

MAINTAINERS: Intel Ethernet: Replace Jesse Brandeburg by Przemek Kitszel

> Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>   MAINTAINERS | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cd3277a98cfe..007f3bda5eeb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11050,8 +11050,8 @@ F:	include/drm/xe*
>   F:	include/uapi/drm/xe_drm.h
>   
>   INTEL ETHERNET DRIVERS
> -M:	Jesse Brandeburg <jesse.brandeburg@intel.com>
>   M:	Tony Nguyen <anthony.l.nguyen@intel.com>
> +M:	Przemek Kitszel <przemyslaw.kitszel@intel.com>
>   L:	intel-wired-lan@lists.osuosl.org (moderated for non-subscribers)
>   S:	Supported
>   W:	https://www.intel.com/content/www/us/en/support.html

Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>

Thank you for all your work, and good luck and much fun with your new role.


Kind regards,

Paul
