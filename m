Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 816E89E68D7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2024 09:29:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BDD66115A;
	Fri,  6 Dec 2024 08:29:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cZQyi0On4qbm; Fri,  6 Dec 2024 08:29:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 818F660E3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733473791;
	bh=IdyCh6KNe6icHlTPWTqftsfhFhzYvOGMWtDt5Ai0dHc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=367geGY21yB52Cnsqh5frMnk/dZyMmE5wAM8soQQ4cTz7T56fA6FuRt3WsCb1T1m6
	 SL1ApiHoj2sERr7aTUkxi7U9QyJYdlq9ZCa8qgYLLbisrijK9trqm+wKWunM9LNKtF
	 7FvqwRT3G34iygLVXz9rrYOB5O0CZuUs94biw8/C5AWgx3ujcxtNO7RSuRV4BZzXYK
	 dGAH/3FR8XF9AfqN7iAljMTBcos90Ylja12kfw8VflkiiNu9FxcN9ue4PMDP1aqtGE
	 BtWy0vNXE6YKBJWg1hagrgVGFUs7QOb9QrugdPM3nAug8a82dHONNaGQrfrSJBv97E
	 MH4blEIBt8fcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 818F660E3A;
	Fri,  6 Dec 2024 08:29:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 10C46ED0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 08:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D1FD1610AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 08:29:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gDVYY_aB1m_K for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2024 08:29:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1B3B160E3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B3B160E3A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B3B160E3A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 08:29:46 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5ae850.dynamic.kabel-deutschland.de
 [95.90.232.80])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1CA7F61E5FE05;
 Fri, 06 Dec 2024 09:29:31 +0100 (CET)
Message-ID: <c011ef8d-04c0-485e-8fd9-e05952bfef82@molgen.mpg.de>
Date: Fri, 6 Dec 2024 09:29:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20241206001209.213168-1-ahmed.zaki@intel.com>
 <20241206001209.213168-3-ahmed.zaki@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241206001209.213168-3-ahmed.zaki@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 2/2] idpf: use napi's irq
 affinity
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

Dear Ahmed,


Thank you for your patch.

Am 06.12.24 um 01:12 schrieb Ahmed Zaki:
> Delete the driver CPU affinity info and use the core's napi config
> instead.

Excuse my ignorance, but could you please state why? (Is the core’s napi 
config the successor?)

> Cc: intel-wired-lan@lists.osuosl.org
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 18 ++++--------------
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++----
>   2 files changed, 6 insertions(+), 18 deletions(-)

[…]


Kind regards,

Paul
