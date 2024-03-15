Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D39287CA74
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 10:13:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 364D98217A;
	Fri, 15 Mar 2024 09:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B9nAKYBsWSiV; Fri, 15 Mar 2024 09:13:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 771368218D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710494019;
	bh=lxG36aunw31I+2dTdVgHhsWpfWJuD63rmQBwk2u9Iac=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XrA6BtIrzmX0tTyLyV7Y3Uu7GipWlLzD/22SUKIv1Nad+WbpgmLfkwjGyq9IYUGfM
	 DxHodAXEQ0wSBFWMvVC3dKnMynlGmCI1EgDQe+C5RUrcPJXUkbGtLY4BjBUzUxjGeb
	 e1odM2pHri+wuGoyFB/6eK6Ur4EeggvUGSUT1RI5gJSkM+PNW7HQM+D79zqG4yDzi+
	 wMGaMMzS3WwNBqDMOM86OdGpbSSwrxiLV1VwYGBAz8u6qH++KLHethdsYBiexOe/gy
	 vd5B+L3swNoMCXSsm0ZrRD5P7/wpknXXBsCB98r4ZlEds93VYYDSc0aljq0vNP/Sdo
	 OUx831z2UmEzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 771368218D;
	Fri, 15 Mar 2024 09:13:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09B381BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 09:13:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E8A7B41555
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 09:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMm2W01c6Ix1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 09:13:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1F4BE40734
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F4BE40734
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F4BE40734
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 09:13:35 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-531-Msc5-Pd3ORSa214LqU-fLw-1; Fri, 15 Mar 2024 05:13:30 -0400
X-MC-Unique: Msc5-Pd3ORSa214LqU-fLw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22079101A523;
 Fri, 15 Mar 2024 09:13:30 +0000 (UTC)
Received: from [10.45.224.236] (unknown [10.45.224.236])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3DB4F40C6DB3;
 Fri, 15 Mar 2024 09:13:28 +0000 (UTC)
Message-ID: <3d9efa93-16dc-47f3-b344-24c37f40df08@redhat.com>
Date: Fri, 15 Mar 2024 10:13:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
References: <20240314120049.111241-1-ivecera@redhat.com>
 <066e0dc8-0f47-4a1c-b989-f8c16f31464f@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <066e0dc8-0f47-4a1c-b989-f8c16f31464f@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710494014;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lxG36aunw31I+2dTdVgHhsWpfWJuD63rmQBwk2u9Iac=;
 b=JfEYuUwfnhCJzS9FMF1YcoDIn5gDBiwY12f35euwT7v/l9SRbls8KGGfVBu5DddVWqMbZW
 QLKCZ/oPM39Ji3ld184TTMFRMHTT3gmukf4NZwyqcu7bjRak8rkt72jBKLLwoi30r71s95
 1BFDYJkgAvrAzCM3yerVznA9xINtogI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JfEYuUwf
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Enforce software
 interrupt during busy-poll exit
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
Cc: aleksandr.loktionov@intel.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, pawel.chmielewski@intel.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Hugo Ferreira <hferreir@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 15. 03. 24 2:03, Jesse Brandeburg wrote:
> On 3/14/2024 5:00 AM, Ivan Vecera wrote:
>> As for ice bug fixed by commit b7306b42beaf ("ice: manage interrupts
>> during poll exit") followed by commit 23be7075b318 ("ice: fix software
>> generating extra interrupts") I'm seeing the similar issue also with
>> i40e driver.
> 
> Please see my comments on v1.
> 
Thanks, replying there.

Ivan

