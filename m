Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F528885696
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 10:33:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7747740987;
	Thu, 21 Mar 2024 09:33:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4LEsevZL7RFW; Thu, 21 Mar 2024 09:33:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85C2D406CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711013616;
	bh=Rs6XYbBWQxRBg0YMTrNuobAVa9pvsnukIpqnddxJZbc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MkdticvOLBDcktK/AHLDcCWtwAEjVy81mb3R+oTXq5cD0IyJ0b5WjROpY1M+o+FlE
	 Nh1iPc57hq4Psq1RiPYDbdZNvhN7tKaYjUEvez2FAA75t7O61HU7SgBIu1e+c7yKkt
	 0sO95h4C8WY/TtdK9pqlUuAJKz9j/hqYTif+xAF3rLcqbtJn2YekWxzMwOoq17nFr1
	 76KRvyR2OewZ7RtPCW0sMAlEKRnzobnAPCgxfCpLTbHEu3jHf+XYtpl5uGDHl2AxZL
	 YWTf3OqL7/l4HGusQs+c0a4WK+Af2rxuZlJNUNCbWV0P8vJXraAgH1yKo01cOMN2gZ
	 QpwxGaBQFMt4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85C2D406CA;
	Thu, 21 Mar 2024 09:33:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0CE51BF30F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 09:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CAC18212E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 09:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YynyYd8MvvoB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 09:33:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D157582083
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D157582083
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D157582083
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 09:33:32 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-173-Dob_UXorNx2b4J-k8THHIg-1; Thu, 21 Mar 2024 05:33:27 -0400
X-MC-Unique: Dob_UXorNx2b4J-k8THHIg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4759D89C661;
 Thu, 21 Mar 2024 09:33:27 +0000 (UTC)
Received: from [10.45.225.240] (unknown [10.45.225.240])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0B6331D091;
 Thu, 21 Mar 2024 09:33:25 +0000 (UTC)
Message-ID: <3540c6da-edbd-48e8-8bcb-effe64470ca0@redhat.com>
Date: Thu, 21 Mar 2024 10:33:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
References: <20240318143058.287014-1-ivecera@redhat.com>
 <20240318143058.287014-6-ivecera@redhat.com>
 <557e819bc6acdfc2311fe2254b1f382bad8368fc.camel@redhat.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <557e819bc6acdfc2311fe2254b1f382bad8368fc.camel@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1711013611;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rs6XYbBWQxRBg0YMTrNuobAVa9pvsnukIpqnddxJZbc=;
 b=Ql67lD25mjYGPiGx5fcGug7MFFT+p1AXSGgULTZASu5MgCtecDhpjJOf8J921qasdEaD1B
 AW+ccmGe5gKX9/gTTjnGeN/zKro309MoENq3S9ooVDg3tzDBWJK47jilbeP+NXGzmy9/LC
 Xt87SXMuykEml3suAWs6JeoSb7nvVlY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ql67lD25
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/7] i40e: Consolidate checks
 whether given VSI is main
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 19. 03. 24 11:17, Paolo Abeni wrote:
> On Mon, 2024-03-18 at 15:30 +0100, Ivan Vecera wrote:
>> In the driver code there are 3 types of checks whether given
>> VSI is main or not:
>> 1. vsi->type ==/!= I40E_VSI_MAIN
>> 2. vsi ==/!= pf->vsi[pf->lan_vsi]
>> 3. vsi->seid ==/!= pf->vsi[pf->lan_vsi]->seid
>>
>> All of them are equivalent and can be consolidated. Convert cases
>> 2 and 3 to case 1.
> 
> Minor nit: while at it, what about introducing an helper for such
> check?
> Reordering the patches you could use it also in i40e_pf_get_main_vsi()

No, I couldn't, that helper does not check vsi->type value:

/**
  * i40e_pf_get_main_vsi - get pointer to main VSI
  * @pf: pointer to a PF
  *
  * Return pointer to main VSI or NULL if it does not exist
  **/
static inline struct i40e_vsi *i40e_pf_get_main_vsi(struct i40e_pf *pf)
{
	return (pf->lan_vsi != I40E_NO_VSI) ? pf->vsi[pf->lan_vsi] : NULL;
}

I had an idea with helper like:
static inline bool i40e_is_main_vsi(struct i40e_vsi *vsi)
{
	struct i40e_pf *pf = vsi->back;
	return (pf->vsi[pf->lan_vsi] == vsi);
}

but I think that `vsi->type == I40E_VSI_MAIN` is simple enough.

Thanks,
Ivan

