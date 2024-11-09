Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD59D9C2D51
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Nov 2024 13:46:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C3F6820C0;
	Sat,  9 Nov 2024 12:46:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P6hXEKt49W9V; Sat,  9 Nov 2024 12:46:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB772820D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731156402;
	bh=mPJDul5c8CFkOstf1cg24bMVGClI1xr26xKlv5NnG1w=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9XM6VfrVbOL9e3bIkZiCjvPYrdT4B7X4yGKnZazqVgjB+KBCl9DfjoobTzUfImDb/
	 ZtOIH2QzPoJEiADjT4oqJH/SiZQe8+cBql+eHScMZ9CJBlEyP3UqWax76Ox2OCNOrz
	 G0InH1WyGdmrEoQ0qo40BDRiE6ido9svXOftiCQ3apsrhNqGjWxCd+umSTdzujHhys
	 Q6RS3qEoGSpEMph1nQad9KLPZqsMKQxavwHcRHlmRyWYKbV7yF8pr/JMABH59KRTDw
	 ZnPC+U+1onAUEl+QpvCMCB9YOWs+SYObjmPCp/jDgrRB1KXIV3fmaCe2cv4tKRRNK+
	 SGVcgBkl61Ztw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB772820D1;
	Sat,  9 Nov 2024 12:46:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 573FED92
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 12:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3772C60623
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 12:46:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zr-PUiQkQevf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2024 12:46:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6AE80605C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AE80605C9
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AE80605C9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 12:46:38 +0000 (UTC)
Received: from [192.168.44.133] (unknown [185.238.219.89])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4BC6A600AA6A5;
 Sat, 09 Nov 2024 13:46:20 +0100 (CET)
Message-ID: <c004fd6b-1ce8-4da9-91d1-648338043c4f@molgen.mpg.de>
Date: Sat, 9 Nov 2024 13:46:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20241108223643.2614087-1-paul.greenwalt@intel.com>
 <20241108223643.2614087-2-paul.greenwalt@intel.com>
Content-Language: en-US
Cc: intel-wired-lan@lists.osuosl.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241108223643.2614087-2-paul.greenwalt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v1 1/3] ice: update ice
 DDP package to ice-1.3.41.0
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

Dear Paul,


Thank you for your patch.


Am 08.11.24 um 23:36 schrieb Paul Greenwalt:
> Update ice DDP package file to the latest version: ice-1.3.41.0
> 
> Highlight of changes since ice-1.3.36.0:
> 
> - Add support for Intel E830 series driver using a dual segment package
>    with one sgement for E810 and one for E830, which increases the package

s*eg*ment

>    size.
> - Add support for 192B max header length.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>   WHENCE                                        |   4 ++--
>   .../{ice-1.3.36.0.pkg => ice-1.3.41.0.pkg}    | Bin 692776 -> 1352580 bytes

Does this affect the boot time, now that the file size is twice as big?

>   2 files changed, 2 insertions(+), 2 deletions(-)
>   rename intel/ice/ddp/{ice-1.3.36.0.pkg => ice-1.3.41.0.pkg} (50%)
> 
> diff --git a/WHENCE b/WHENCE
> index ff5b05f4..24d85bcb 100644
> --- a/WHENCE
> +++ b/WHENCE

[…]


Kind regards,

Paul
