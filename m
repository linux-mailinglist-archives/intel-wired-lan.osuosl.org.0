Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A0FCBE243
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 14:52:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A980B401D5;
	Mon, 15 Dec 2025 13:52:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aS6vYXnHEv2p; Mon, 15 Dec 2025 13:52:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2374B40653
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765806720;
	bh=5xOfSsOHTJVPT/asFcBzsToAdyh5F43Xil3FQ+PqXO4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mUPpdZQ+6vyEU8kUVN4yNwz4aQj0T1+e6lsCIpbqKCO3VX+3Sg5REh1GPhbqDzmR+
	 +CqDdBaLvSNiFXJZeMttNG376um912j54Dta4wS8q7qiHiKMms8JIm2N+MRatKNrnz
	 WKv9ABJLHkm5eEL47VMlcdBHgj8xJXgSjQOW4SIEuHoxqUr6cFFqDgEzaJigzSv+yn
	 eyalACKi9Xx7shtROzZR1ElpyOlnCBSNUlfrSNt4JfvHk4xX+upMtPx/0IRvihHZxw
	 L2sQrS07RedMzK8nlLvEJMt9HSgwW8bbCFnDOg7AAQK5QLka+VqZuu8n4bVJLkaQHY
	 HW7c6wqI1XgoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2374B40653;
	Mon, 15 Dec 2025 13:52:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 06526272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFF92407E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:51:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMOeyEP1gE2W for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 13:51:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF50A407D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF50A407D9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF50A407D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:51:57 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-537-EpkNGB0SNJqMAM5A8UhPHw-1; Mon,
 15 Dec 2025 08:51:51 -0500
X-MC-Unique: EpkNGB0SNJqMAM5A8UhPHw-1
X-Mimecast-MFC-AGG-ID: EpkNGB0SNJqMAM5A8UhPHw_1765806708
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id AD1AC1800624; Mon, 15 Dec 2025 13:51:46 +0000 (UTC)
Received: from [10.44.34.139] (unknown [10.44.34.139])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 86067180045B; Mon, 15 Dec 2025 13:51:38 +0000 (UTC)
Message-ID: <eee9be12-603d-4e8e-92f8-e76728974313@redhat.com>
Date: Mon, 15 Dec 2025 14:51:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-3-ivecera@redhat.com>
 <ahyyksqki6bas5rqngd735k4fmoeaj7l2a7lazm43ky3lj6ero@567g2ijcpekp>
 <3E2869EC-61B3-40DA-98E2-CD9543424468@redhat.com>
 <tawd6udewifjeoymxkfkapxgcgfviixb4zgcjnplycigk5ffws@rdymwt2hknsl>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <tawd6udewifjeoymxkfkapxgcgfviixb4zgcjnplycigk5ffws@rdymwt2hknsl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765806716;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5xOfSsOHTJVPT/asFcBzsToAdyh5F43Xil3FQ+PqXO4=;
 b=Zy2F0cCeUeuDw8hacFZdd4D6bhJiSeHDbi8MYL+mJZVMt5KprMfjNpCShwAYKmN+FiH+Bt
 iYFslz9fMns8BXuajlOhmuxLDajOUWLi2AFBK+rwKETMsHyMKbvlAwFe5l7IsLvOZrhOUk
 8im1gsKVaIQ7cblO9jmf9THbvL3TWV0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Zy2F0cCe
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 02/13] dpll: Allow
 registering pin with firmware node
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/15/25 2:08 PM, Jiri Pirko wrote:
> Sun, Dec 14, 2025 at 08:35:01PM +0100, ivecera@redhat.com wrote:
>>
>>
>> On December 12, 2025 12:25:12 PM GMT+01:00, Jiri Pirko <jiri@resnulli.us> wrote:
>>> Thu, Dec 11, 2025 at 08:47:45PM +0100, ivecera@redhat.com wrote:
>>>
>>> [..]
>>>
>>>> @@ -559,7 +563,8 @@ EXPORT_SYMBOL(dpll_netdev_pin_clear);
>>>>   */
>>>> struct dpll_pin *
>>>> dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>>>> -	     const struct dpll_pin_properties *prop)
>>>> +	     const struct dpll_pin_properties *prop,
>>>> +	     struct fwnode_handle *fwnode)
>>>> {
>>>> 	struct dpll_pin *pos, *ret = NULL;
>>>> 	unsigned long i;
>>>> @@ -568,14 +573,15 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>>>> 	xa_for_each(&dpll_pin_xa, i, pos) {
>>>> 		if (pos->clock_id == clock_id &&
>>>> 		    pos->pin_idx == pin_idx &&
>>>> -		    pos->module == module) {
>>>> +		    pos->module == module &&
>>>> +		    pos->fwnode == fwnode) {
>>>
>>> Is fwnode part of the key? Doesn't look to me like that. Then you can
>>> have a simple helper to set fwnode on struct dpll_pin *, and leave
>>> dpll_pin_get() out of this, no?
>>
>> IMHO yes, because particular fwnode identifies exact dpll pin, so
>> I think it should be a part of the key.
> 
> The key items serve for userspace identification purposes as well. For
> that, fwnode is non-sense.
> fwnode identifies exact pin, that is nice. But is it the only
> differentiator among other key items? I don't expect so.

 From this point of view, not. I will not touch dpll_pin_get() and rather
use new helper like dpll_pin_fwnode_set(), ok?

Thanks,
Ivan

