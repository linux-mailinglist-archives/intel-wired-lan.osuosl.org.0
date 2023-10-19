Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402AC7CFFAF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 18:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0CD3400C1;
	Thu, 19 Oct 2023 16:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0CD3400C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697733335;
	bh=HCpo9+NAKxey+2zX+9ovTQNu2mbwC5TD90B8mLtG/YQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z87srK9vHuzRTqDIvPzkO/utdW8FP2JrpWLIYpH13Iddysp+tDnEnf/NDD2muBLB2
	 wtoC26sVm0euM+xSjE3VkbF365lNDz6wrzop8EyHKqxpqYW0vsqE7kQYDy0/9Fakbe
	 /tCzq9oR2aoaOF2wtgR/7QuCPUQRzZ97pTKznJlyfbkWaE09gylHsKoYBxrrvnEl3E
	 te3t8p5B8Nx7pH73Pwpq44WEyjy1ZTUczWdQTBwWQ8tJ1yM/a4kSD9RLWUXheaUzfb
	 3gUXkrI8ssJ37nlTiJbksLrdC4/hh2F3WR/CNgcPEY8nHYvmV5wedYkSP/h09lDlae
	 O5jH5eiWth01Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4FHFCJ_XBsFc; Thu, 19 Oct 2023 16:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C26C5408AF;
	Thu, 19 Oct 2023 16:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C26C5408AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DFC01BF27A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA3D242F86
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:35:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA3D242F86
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZGPai67w27w for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 16:35:27 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A5E142F85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:35:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A5E142F85
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-403-QnnxGI2yNW6TXlgwbkvJMQ-1; Thu, 19 Oct 2023 12:35:22 -0400
X-MC-Unique: QnnxGI2yNW6TXlgwbkvJMQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1C62E88CC4B;
 Thu, 19 Oct 2023 16:35:22 +0000 (UTC)
Received: from [10.45.226.105] (unknown [10.45.226.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8CEF22026D4C;
 Thu, 19 Oct 2023 16:35:19 +0000 (UTC)
Message-ID: <3f12a532-a0f9-4a7e-bfda-c85b539b81d0@redhat.com>
Date: Thu, 19 Oct 2023 18:35:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Horman <horms@kernel.org>
References: <20231018112621.463893-1-ivecera@redhat.com>
 <20231019091408.GA2100445@kernel.org>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20231019091408.GA2100445@kernel.org>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697733326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=A0TxOuArDcomwzRpdOzuputQGYUhRrujAZgHVzm3P74=;
 b=U6TJn8bn3ULFSu5N9PFA9b8moj150TyPVKv6TVKi5PHadwmb2mL3VcFPMkqhKMZLo+nGSG
 Y+oWxaAMt1efswyOgtjDLmtnecewwOBfJs/h1D7uSsqgzbGAQKi1D39Q9aM/sIP+vP1Z4I
 YpE+9xe7W72Y0/qJnr9eYhFcqpaUJaQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=U6TJn8bn
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix
 I40E_FLAG_VF_VLAN_PRUNING value
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
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 19. 10. 23 11:15, Simon Horman wrote:
> On Wed, Oct 18, 2023 at 01:26:20PM +0200, Ivan Vecera wrote:
>> Commit c87c938f62d8f1 ("i40e: Add VF VLAN pruning") added new
>> PF flag I40E_FLAG_VF_VLAN_PRUNING but its value collides with
>> existing I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED flag.
>>
>> Move the affected flag at the end of the flags and fix its value.
>>
>> Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> 
> Hi Ivan,
> 
> I agree with the correctness of this patch and that it was
> introduced by the cited commit.
> 
> However, I do wonder if, as a fix for 'net':
> 
> 1) The patch description could include some discussion of
>     what problem is resolved, and, ideally, how I user might
>     get into such a situation.
> 
> 2) The following fixes tag is appropriate.
> 
> Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")
> 
Ahh, thanks Simon! I forgot to add Fixes: tag.

Will fix it by v2 and add the reproducer.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
