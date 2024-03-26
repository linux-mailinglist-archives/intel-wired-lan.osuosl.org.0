Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E328F88BE59
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 10:51:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CCCC40578;
	Tue, 26 Mar 2024 09:51:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zwMqSwlgvw9X; Tue, 26 Mar 2024 09:51:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3503840ADF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711446717;
	bh=lsgIHZ6t47RKFF+C8jcAgd5UADfhu+shQ4EaON+pya0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JopHMnOAMVhVUn50ETxINvKnbeGeIszNnCcWBYLrIxQd7B46DyrAELfSKmrTmjP3W
	 KYP/S34jZhqm6uAdS6fKgCIDQUF/5m1HswI5RSVM+9Dw7y7yf/1cTvpxiZ2e4YwD7q
	 0EvmFH9Cf6GkGE+nLfJbbzSXUbgkqHAuEFZnyGS6pc8t5IHUFzo2JNPeoUGuI4g8QL
	 ZmJDcEZ8pJu26hxf1E103aCZeaNygvxHGmp8qk/TsUgwNQzqk0qSJwJ8c4yx1VKwNh
	 gsaEy3Yd8y+zQ7lqxoHaK4kjbDfM7SO/J6Xr5VFlkhx5zd/0xzMpwqLn70d+uE/aEc
	 YpMKfBQBx0NxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3503840ADF;
	Tue, 26 Mar 2024 09:51:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7CC71BF397
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 09:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9FDFB60657
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 09:51:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SNjGYheciVsJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 09:51:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 925D960628
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 925D960628
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 925D960628
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 09:51:53 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-335-IgCT65hGNAKssCJkJ7K1nw-1; Tue,
 26 Mar 2024 05:51:48 -0400
X-MC-Unique: IgCT65hGNAKssCJkJ7K1nw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DBA1D382C463;
 Tue, 26 Mar 2024 09:51:47 +0000 (UTC)
Received: from [10.43.2.69] (cera.brq.redhat.com [10.43.2.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C7C8F40438B7;
 Tue, 26 Mar 2024 09:51:45 +0000 (UTC)
Message-ID: <65b02586-1322-4eb3-b46d-36cf4bf6a3bf@redhat.com>
Date: Tue, 26 Mar 2024 10:51:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>, intel-wired-lan@lists.osuosl.org
References: <20240325232039.76836-1-mschmidt@redhat.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20240325232039.76836-1-mschmidt@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1711446712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lsgIHZ6t47RKFF+C8jcAgd5UADfhu+shQ4EaON+pya0=;
 b=Gepqmo3qkB9JQBA1QRcymcDiNlVtIkCFggoA3tnjgYUCHrxgj9gUom3aQzTL1uy0IFODO+
 C5YCgcvzyGBmf/gI/pCjXztYW0OCVwhM9jFeFhlSciRXiMTB+LZGZ6fuhLKVwOJSwLJwvy
 4YWVZzvXgOa0WDN3FktCwiUM8PxO7lw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Gepqmo3q
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/3] ice: lighter locking
 for PTP time reading
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26. 03. 24 0:20, Michal Schmidt wrote:
> This series removes the use of the heavy-weight PTP hardware semaphore
> in the gettimex64 path. Instead, serialization of access to the time
> register is done using a host-side spinlock. The timer hardware is
> shared between PFs on the PCI adapter, so the spinlock must be shared
> between ice_pf instances too.
> 
> Replacing the PTP hardware semaphore entirely with a mutex is also
> possible and you can see it done in my git branch[1], but I am not
> posting those patches yet to keep the scope of this series limited.
> 
> [1] https://gitlab.com/mschmidt2/linux/-/commits/ice-ptp-host-side-lock-10
> 
> v4:
>   - Patch 1: Use named GENMASK macros and FIELD_PREP.
> 
> v3:
>   - Longer variable name ("a" -> "adapter").
>   - Propagate xarray error in ice_adapter_get with ERR_PTR.
>   - Added kernel-doc comments for ice_adapter_{get,put}.
> 
> v2:
>   - Patch 1: Rely on xarray's own lock. (Suggested by Jiri Pirko)
>   - Patch 2: Do not use *_irqsave with ptp_gltsyn_time_lock, as it's used
>     only in process contexts.
> 
> 
> Michal Schmidt (3):
>    ice: add ice_adapter for shared data across PFs on the same NIC
>    ice: avoid the PTP hardware semaphore in gettimex64 path
>    ice: fold ice_ptp_read_time into ice_ptp_gettimex64
> 
>   drivers/net/ethernet/intel/ice/Makefile      |   3 +-
>   drivers/net/ethernet/intel/ice/ice.h         |   2 +
>   drivers/net/ethernet/intel/ice/ice_adapter.c | 116 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_adapter.h |  28 +++++
>   drivers/net/ethernet/intel/ice/ice_main.c    |   8 ++
>   drivers/net/ethernet/intel/ice/ice_ptp.c     |  33 +-----
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |   3 +
>   7 files changed, 163 insertions(+), 30 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
> 
Reviewed-by: Ivan Vecera <ivecera@redhat.com>

