Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591347D6FAD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 16:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D11294370F;
	Wed, 25 Oct 2023 14:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D11294370F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698245367;
	bh=PJiA6L5A0nZd2uJVCnJZgW/bptk9YRvBYI1iV7FzcdM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MeM6angniCJNfz9V9ja1jIPDKdxxi6ys7ga0QJ4L2tsrkP86U2LLt0lsUbmc9uiyr
	 aD3CjPhdCApMwLyN9lTueTlYvOpO09qdKTuyrrcfWYLsRkXzrcGQ0HPa+FA8wkcKHZ
	 KZkzKr9aK1l7QJDu3FsN6bjRUo5jSMfvxVz5/XkhcQshXCwFCwsZ5eXpX8jACvvEom
	 jaN6J9S5ZXnmjPk7BZ8z+6dmANSvmRdZfFYi8nhow4f4ShKsJZpDBUyQRkQQMtb0fk
	 IOgLU63KYh89f3CwKvU+OryROvXdbfo44l7LCSyhmWSwnJKVQ4Uboup26I50WILM4z
	 bkZB844m1Phww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwfxfX92g2kT; Wed, 25 Oct 2023 14:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B787D43370;
	Wed, 25 Oct 2023 14:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B787D43370
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B8FBA1BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C1BB43370
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C1BB43370
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iGwvHCYjEN1R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 14:49:21 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBC43405F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:49:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBC43405F9
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-501-D9xpdfXVNhCgtpipLzBmYw-1; Wed, 25 Oct 2023 10:49:14 -0400
X-MC-Unique: D9xpdfXVNhCgtpipLzBmYw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 637C9811E91;
 Wed, 25 Oct 2023 14:49:13 +0000 (UTC)
Received: from [10.45.225.62] (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F175525C0;
 Wed, 25 Oct 2023 14:49:11 +0000 (UTC)
Message-ID: <fa91d099-74d7-48f8-9316-dba9a4e0b826@redhat.com>
Date: Wed, 25 Oct 2023 16:49:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org
References: <20231025105911.1204326-1-ivecera@redhat.com>
 <389ecfc4-dfd7-4c56-b18f-82565e059914@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <389ecfc4-dfd7-4c56-b18f-82565e059914@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698245359;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IQg2aiugEAr81dlu2QQgtvQkHg29djoP9+oseI0sItA=;
 b=YGqLe4YKEdtUzEhWrrpY8oNCWQgND+H2CkemY0bFPWC8Gy0WNEvG1kYS5AaZkJFrYM+F4L
 D6Q+LSI+lEZwRyJPyl9v0tlwfpIeZ5hefaqwlkt/qJ43XEiEuMDjQzLAODOUBP0wf9KseR
 Fu9IDTIg62iPn6XvUDZQf0jLnuIOmWY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YGqLe4YK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Delete unused
 i40e_mac_info fields
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 25. 10. 23 13:03, Wojciech Drewek wrote:
> On 25.10.2023 12:59, Ivan Vecera wrote:
>>  From commit 9eed69a9147c ("i40e: Drop FCoE code from core driver files")
>> the field i40e_mac_info.san_addr is unused (never filled).
>> The field i40e_mac_info.max_fcoeq is unused from the beginning.
>> Remove both.
>>
>> Co-developed-by: Michal Schmidt<mschmidt@redhat.com>
> Signed-off-by from Michal is needed, other than that:
> Reviewed-by: Wojciech Drewek<wojciech.drewek@intel.com>
Will fix by v2

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
