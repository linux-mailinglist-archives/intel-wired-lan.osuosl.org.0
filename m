Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 843C1D1435A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 17:57:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EB3781467;
	Mon, 12 Jan 2026 16:57:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v1tJRZyrGx6Y; Mon, 12 Jan 2026 16:57:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D2CB81460
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768237024;
	bh=c+ytZ1c/Ea9PPW16FUHxaZOlzDf1w43iH7iqICQbdK0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A0gc0UYsNS0bU+OMBWHdD2vsDreMIBS5PpzMiQKL6yb4uudkV6QOyD0/bouuw/aOD
	 eC7qYj0iBz1ICQgcDDEo2PjUVs2F84ESu0Bjp+XCcfZWLi37cOtdSN08ZECMr0Nl/h
	 AZF+DEUw18vEt9ndfesrJakJ6ESNESweB3wwQrsy6TtKVe7lhLduyqDr7cHjtV1c/r
	 /ughyVX/dqaGEJexKED6WuJcdt/kBEgeMBOEpjVz5fKWp2hTmQT1cj77tEUHwbHGPc
	 wt2jumc1Xk9WgDOeIb6UA6LDNLVrvepxa+9KqsK86ne3U7sQEHBEhIO2QnU4A1LVki
	 y8r33jmF8R9bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D2CB81460;
	Mon, 12 Jan 2026 16:57:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B5A7118D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C9FC40674
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FxTOdliWBEJG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 16:57:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 96DD5404D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96DD5404D6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96DD5404D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:57:01 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-481-Ugn58wkyN1CvtXd7CIAw1w-1; Mon,
 12 Jan 2026 11:56:57 -0500
X-MC-Unique: Ugn58wkyN1CvtXd7CIAw1w-1
X-Mimecast-MFC-AGG-ID: Ugn58wkyN1CvtXd7CIAw1w_1768237013
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 6AA9E1800372; Mon, 12 Jan 2026 16:56:53 +0000 (UTC)
Received: from [10.44.34.128] (unknown [10.44.34.128])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 8CDD030001A2; Mon, 12 Jan 2026 16:56:46 +0000 (UTC)
Message-ID: <97487370-0ef5-4324-87e9-c86668055314@redhat.com>
Date: Mon, 12 Jan 2026 17:56:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: kernel test robot <lkp@intel.com>, netdev@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>
References: <20260108182318.20935-7-ivecera@redhat.com>
 <202601122216.BCarSN6K-lkp@intel.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <202601122216.BCarSN6K-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768237020;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c+ytZ1c/Ea9PPW16FUHxaZOlzDf1w43iH7iqICQbdK0=;
 b=RNzDAPAFBVINniZjoOVsNDNlolcsWlk0HPvfK0isZAJEaziCQEJGDjA6GQCwpuVWJS/Aie
 xSvxsMS75+0wYgTmqlyasBBgE/a9ignM284jG6G9KI8USPeQBQCAnmGXwsDhPEGF+Br/Hl
 zkM7ng/XGfjCudpd1ak/w2VeXkl93qY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=RNzDAPAF
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/12] dpll: Support dynamic
 pin index allocation
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



On 1/12/26 4:13 PM, kernel test robot wrote:
> Hi Ivan,
> 
> kernel test robot noticed the following build warnings:
> 
> [auto build test WARNING on net-next/main]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Ivan-Vecera/dt-bindings-dpll-add-common-dpll-pin-consumer-schema/20260109-022618
> base:   net-next/main
> patch link:    https://lore.kernel.org/r/20260108182318.20935-7-ivecera%40redhat.com
> patch subject: [Intel-wired-lan] [PATCH net-next 06/12] dpll: Support dynamic pin index allocation
> config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20260112/202601122216.BCarSN6K-lkp@intel.com/config)
> compiler: m68k-linux-gcc (GCC) 15.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260112/202601122216.BCarSN6K-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202601122216.BCarSN6K-lkp@intel.com/
> 
> All warnings (new ones prefixed by >>):
> 
>     drivers/dpll/dpll_core.c: In function 'dpll_pin_idx_free':
>>> drivers/dpll/dpll_core.c:499:28: warning: integer overflow in expression of type 'int' results in '-2147483648' [-Woverflow]
>       499 |         pin_idx -= INT_MAX + 1;
>           |                            ^
> 
> 
> vim +499 drivers/dpll/dpll_core.c
> 
>     490	
>     491	static void dpll_pin_idx_free(u32 pin_idx)
>     492	{
>     493		if (pin_idx <= INT_MAX)
>     494			return; /* Not a dynamic pin index */
>     495	
>     496		/* Map the index value from dynamic pin index range to IDA range and
>     497		 * free it.
>     498		 */
>   > 499		pin_idx -= INT_MAX + 1;

'pin_idx -= (u32)INT_MAX + 1' should be here..

Will fix.

I.
>     500		ida_free(&dpll_pin_idx_ida, pin_idx);
>     501	}
>     502	
> 

