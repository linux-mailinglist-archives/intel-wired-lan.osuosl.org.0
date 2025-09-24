Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27473B984E6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 07:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA3FF81399;
	Wed, 24 Sep 2025 05:52:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e2i94ceuSaU4; Wed, 24 Sep 2025 05:52:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1E42813C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758693125;
	bh=sTIFys7N4dfcGxDU9TYs7hGzYSALe8GRHAqC4czeu80=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IBofTmt5OIZCZZJzRa6etLDJzaR7ioDcxLgT4XmynKvZELsSA/H1l5IfSo4Scs7A9
	 d339/4TKzxhA4sM31MV0y4yA2rNoqslFcvWC+GMFjRr6pBrEQUe1YA6PTxxzycE9dX
	 lDfl2a+sRkBzkSvG2IXFI85uudaCfpbrAeIhReGxC+yr/OC0eZI2W0VuFYjh8fOvWw
	 DV+7Ad2DDe0gNcO3b6pqQCawstg9wNe/goUO3Cnw2uSQz2kWe/MDMLnFyah/eUU7vL
	 pRAmmFBz5mvh5St3108DuuytxyKIvMFCoM9dL7x1XFPa2StKhzAfsbhzfw/Hb4lEU7
	 CW69i6zL2Pr1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1E42813C9;
	Wed, 24 Sep 2025 05:52:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EBCE129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 05:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40DD94022D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 05:52:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3u2huGMG89Ij for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 05:52:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=ramu.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6E23F40176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E23F40176
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6E23F40176
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 05:52:03 +0000 (UTC)
X-CSE-ConnectionGUID: 2HZcwfugQEOYBTXI2OU12g==
X-CSE-MsgGUID: M7oG2v9VQNqinyVsAa1Fag==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="64822515"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="64822515"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 22:52:03 -0700
X-CSE-ConnectionGUID: vhEtKT4VR0W798pJHRKUVw==
X-CSE-MsgGUID: CuGKLaW0SjSHLMy5OIM2iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177726417"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 22:52:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 23 Sep 2025 22:52:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 23 Sep 2025 22:52:01 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 22:52:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K5pCexQz3hVOGn8cU2s43JUzbL+CkT4IiIj/7qgikEZPZvKkjT031fdRhn2VUsgB3raHhkRRRXw4RWbOBEkrQrfp7FePmmJEV3FnxrWhHKn53KA+UJUBoNJfsDEtomUHbVeF06YqRgMv1EvvHNUIGay4R7/ays123rRWGkECOgA5s3BbXYrZ8AYdeKCok548CNSsszLY9d3GNbEEKApM1SGXFDyh7Ukin89OCZp1rUB1qV4leWlVtvUheI4/F38Zn+ddfSqR8kDWnmVUUBNTeJnrYCZmachgcT5o/ie5Dt+LD60ra7sHZRS516+Yfvml7GvR24PszRU9BkRPtSXeVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTIFys7N4dfcGxDU9TYs7hGzYSALe8GRHAqC4czeu80=;
 b=J3fTVrNuQnXKYm6DQc2zw3uuGY3Zmx62XMKP1UX4zJxzZ/0SFOwMYc4SQKIz5reMeDfKYMMOCaOHU4eR9r7+N1rXxi0IWNRKTF83IFDbEyToT7EL0UVMbEATzpyOFQYgGHyzL0biQqNy44NaXyXsUC4oiq4ltlHI8zkkSRQrpiSkc9BmLhyYy+N+4cS/K+OHPIqd4En3xXO5ZIQ122hwX8TBUSWnAn90ZQqq3f2wcCiqp95oYYJd1FVw4XXfE2fyDnYt/0IaACIyijbY95VXPuhFzqOmUXUxzxFy1x0lYs8iOSWeqgbBE6Ua0Lvi5gQvKl29YkPvvasNDvFY3aj8kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) by
 DS0PR11MB9502.namprd11.prod.outlook.com (2603:10b6:8:295::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9137.20; Wed, 24 Sep 2025 05:51:53 +0000
Received: from DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425]) by DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425%7]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 05:51:53 +0000
From: "R, Ramu" <ramu.r@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Simon
 Horman" <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/5] idpf: implement Rx path
 for AF_XDP
Thread-Index: AQHcIzh7VTd95mXmUUWYARc8Elh1zbSggVzQgAFmgNA=
Date: Wed, 24 Sep 2025 05:51:53 +0000
Message-ID: <DM4PR11MB645596392B206C0B1457116C981CA@DM4PR11MB6455.namprd11.prod.outlook.com>
References: <20250911162233.1238034-1-aleksander.lobakin@intel.com>
 <20250911162233.1238034-5-aleksander.lobakin@intel.com>
 <PH0PR11MB50137497947DE469E760CD40961DA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB50137497947DE469E760CD40961DA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6455:EE_|DS0PR11MB9502:EE_
x-ms-office365-filtering-correlation-id: 160ee413-65fe-44f2-ecab-08ddfb2e7693
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MLo3pwpDnufXzWeO40Akhiv8HTpPZW6Hf5JAUM/PWFU130iNEG6LJ/HLiecE?=
 =?us-ascii?Q?KQJjLecdh8z/yDOwm/zNgy+q+iBxuAvQcA+6bX+N0IkWuuKrLOCkGRAiK0by?=
 =?us-ascii?Q?u4Dmr76uPxK/5+w7iuuzXzbiKr5yex/taB2ZJKSKhKpN0xJzdaedaab4nDwU?=
 =?us-ascii?Q?ubjARGBS+afq7mVB1bcMBY15LwpgMVntkV0M0Tn1JuaTLkoxEq9ufiDi7s6l?=
 =?us-ascii?Q?gjgD8HC7WvprmsuzeNixzxNvR+ONF7k+OWsux2ZDRIzOo1JnIaNwW+Z4Jnrh?=
 =?us-ascii?Q?5I/kASX7ise3Xsgn6Ck4+KSYUnVaRKr/7KRBjRSNRtVg5uCBRxl56RTPCMeF?=
 =?us-ascii?Q?o2RaCQzqYUB2IrqkKCWAIpyccS5zEdfvcBdCLi1X6fvwhTt211UEjNz1xkdR?=
 =?us-ascii?Q?LTjVOX5mDVXID4JojS96c+5qGjRPLlDmp6yXuIMiN4IAu0Ejgd1KCKXxxYR1?=
 =?us-ascii?Q?OXvMhD+qh21VbaL/xX/r0GykEZ2HFZfB2faYrE2MFIHQZRkHjdqosCpI6c21?=
 =?us-ascii?Q?tWMccQPbdKEn7MfIH77U89CLQX6AraHtjEtDOWjrc6R5enj2BEuaCQ/v4xo6?=
 =?us-ascii?Q?xsW0B5PvABBdD18ZulQgP+oGRDZ7QJDsCGkmXrBNgCJaaN6lt6J2HW6Rjerc?=
 =?us-ascii?Q?17w51na30JTDrMz4B/ysD+pWs/WOzZasMRbXzQkq0x2/ynz+0wFPrB3r8Bze?=
 =?us-ascii?Q?TFWDDNz5OZvpjeQPUJ9Gew39gYTzQXYqp1pS8SaOULMTEHGVBxlPVER9U2yn?=
 =?us-ascii?Q?WBsXvMGziJ6uBS2gXkXu1ozrtKClwmJed/YNXfMNxxI/hg5iQfnt8Bwe04xv?=
 =?us-ascii?Q?SlnCs78rjefZ4JPp4/0keC73C9/I9aG5hXvpwGvEzav+KPsTA2ehhofaAVn9?=
 =?us-ascii?Q?vlHvH8jrsYF+ou5iUxdF4LVDEH/1PhG2zVSpF1FilacTz0go+a9w/qm7TmJh?=
 =?us-ascii?Q?LFeYb77pVi3l4EUtTr7hWE7zEVoAvTWye2YIvhZvWyp3ak/2wvzG0CYFOwfg?=
 =?us-ascii?Q?smkEKG0+x5BQT/qnlfjbm8z/lRIsuK0we/y75svuaD6Hw+gqSv+JrVVVP67k?=
 =?us-ascii?Q?w02WUZVhbVfgeRC/CTiAgDFhqP845diLs7HxaVrXJb9gz0nJK5cXwZlh3cPr?=
 =?us-ascii?Q?ix6agBkJRKsBzMpenHxuTOmhmmAa3AOxEiHgJh2wRjUz55ZST60fO794x81i?=
 =?us-ascii?Q?TNJMY3H2+JEcSzBa46ysggsX9Uu1I7jUx9el4eknyYx69pA7KanGzEbTnDTm?=
 =?us-ascii?Q?mJUFSHCPwLH0JdFs8C7mOclWk8IGjTwdvqMs75TOPchmUTe8b15UlRwYMJzT?=
 =?us-ascii?Q?H3baO9D2mYOlzuPKOiTfkO+iiazKdqrR/Tg2IP/EgBkXDaZauTU2TyoitnDc?=
 =?us-ascii?Q?qO+6X628Hl23ugltpfXbwHz2rk61qMXCevsM8DacMfYyV7UKCb9sK21Wtp4R?=
 =?us-ascii?Q?S/utTPO0X21kxo2ZRC86OqrA9imTIwr0FEWuGKSCrObfsRUe45s2DFReO/BB?=
 =?us-ascii?Q?p7ZcvU0Wjw5chWQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6455.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lf2NuLrayX9hVginD4T/Ir6oYdrv5WyxbOd85vHS/X22gMQybXK5B3eVx8aa?=
 =?us-ascii?Q?dW1+SoX5Z0cColyC9nW8N/0icfFLZGrhFrelkj7nEkGk45UY/8MvipoMLx2o?=
 =?us-ascii?Q?UPLU/FWbBhJ65GyUSug7SH34ZJixC/ktdAa6k/hzSckmwPJoGlCaDPlVrv9X?=
 =?us-ascii?Q?xU2UfPR6gVOIKWiDpEsuzSEeGwz/tEiJtnweaffudcqtFtlYYnZQw3PzFoJH?=
 =?us-ascii?Q?sLLteYAsccPc2Dznf73p6PtREhpY/MI1iSxEENgf6gUfTxzBovVgVqJiWvxG?=
 =?us-ascii?Q?HxXjqvxVBq/IweroYelUskZSVTXO6LBtOt9FX2pKQ6WYK7ccclge+InCpRqZ?=
 =?us-ascii?Q?Yi1t1kRQYY4W1vYBdm21gQyFH8Ww7P3hQLSkXzjltYzbev4vO4mH8PWm2adK?=
 =?us-ascii?Q?qdTQd7ow2kCkSlzaaXqMuh3LUj2mEHbrXYS8Rf0Th5XpUjh6i88SJdHFSY5y?=
 =?us-ascii?Q?jE/c/7iMjYxT4CQVtT0lzOgzS7KTX6zimeV3cyBIa/zSZYn1BXbfuP6HXoqe?=
 =?us-ascii?Q?HUF/CfLjr3CActake7Pxg7rEJn3UWSpuYS3V4/mtjJj4aLK0AXe5mdieAu6B?=
 =?us-ascii?Q?dYKsM1FadZ8DyvVIQ5MW7q9iukntQvZEnlI0qh+mpG8vdZUdiHYwLmYSL61J?=
 =?us-ascii?Q?lbyeP3mP4ctAIhxOZAsMApEzhKvXog0egAWcl3j0cJW65lqyWyPmueIGD42X?=
 =?us-ascii?Q?zgZsZVid34GT+Xv4C9TvnjGXzzQ7yu1XvZwixX9HyD5J+ziH4m8O//F/OJXD?=
 =?us-ascii?Q?R+SFWmkAcaYDRIAApDHIyizfZ8BnnTwOmDNZtc6JiXPLT4Ndnm9TrcW7WyVm?=
 =?us-ascii?Q?0VLN9v6ZcHB7kzgnVUhVJ1SNRppEd3UBLghh+nHYyEc2ehCgB/Wb2ptE7BcE?=
 =?us-ascii?Q?8upaA944ZZFppBwvNDbQWveHcylONgdaNIwNSxvtxJ90V47l8FzVjh6gs0R3?=
 =?us-ascii?Q?vsjavdHFThrrOxGmeRWGJuL1ZAlhJI2wM4D58IrKBF5G5pORap2Wz3Bi7yw0?=
 =?us-ascii?Q?ZEjwGkdrKLuUj5wiSQTSWvKaG1sPatsjn144oW5IaOxsb43Fi2UeD2xOtsbj?=
 =?us-ascii?Q?Ev34DbMzaoMqi78KhXkdU0ljER9IsELvJwS0oHutf2VL2qH+Tc9jZe3kRALF?=
 =?us-ascii?Q?VsVuqD2oBuLitFy6KlnUl5BFMHFH79Hpw6v3Q3qD6roDmq6Yh7csySLrzLeH?=
 =?us-ascii?Q?woNhMlJjl5zNoB4/Usj7tdxwCepxTGLm6uAJEoHlqfbjBoM8J9F0O+hpINL1?=
 =?us-ascii?Q?7FCrzQLwZkjr1efloqLeIa4EoTXVSBEFOMSPG0c2W85e6iGgspqf0xZote5x?=
 =?us-ascii?Q?PtD+K2lSlDM+WVYyYYG6Vusm34lpD71pwSGhzhoHxue0s80n0TS0cBR4Xei9?=
 =?us-ascii?Q?jXA77TIfvK6fBX8aNu74wXKLetcgE8X4r1GkdIGUweSHfBObMYqlkXmmcioa?=
 =?us-ascii?Q?GVxmXcBVqEAKviQriqKPbSQUIpdiN8c35xrk8kpdMe3n276blsczWbtHWnxk?=
 =?us-ascii?Q?D30buiucCNooUHd8joDLX2F/XmTB6kBU6Z4+QelSrS6jo37dg9THkaIx+UGK?=
 =?us-ascii?Q?KSTJ43Ed8KEOvxOBvzU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6455.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 160ee413-65fe-44f2-ecab-08ddfb2e7693
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 05:51:53.2620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6sNSNqcBaiQ8S/3aYjVo1fWzK6X+FqTCHs2dif40RKyWXE1kcXcficqTtZxFolCb4wuQ7jnsPL0DSuE/hXqghw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9502
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758693123; x=1790229123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nEzBa0P9A4eMaHZNmfcIMUGVT6SI4rgIB9CSlukhkkA=;
 b=JyqXuFgiuPC3IzdrbWP8LPl4GVZ1lI7CqK4StLE7WPeO5MkZmr0WdIKf
 rBAwi0FOSiLxfmVVkzTOrCraIQnA5qasPotugr21XeAwdfqTV3xMr0Njg
 nSaS1bd2cAQCo6MENVOtLEBAJMQIX4PwpQI7aYb3PmnjV1F6xDLd/ASw1
 m10GwZzqX3UAbFqgXNY7RvGFbDg2ikLXtMeJFZF10q0ZsXhXVdjcjesP9
 VwBF8dI2hgygXFMSYK4wShGpfH8+5+R5x4zMOUi2Or1+sMfWGWIzA9g3r
 m2s08HsE/V3DAUihF6eb4cnyK0aZAvkFbGcOi+caTQVexZCI6X2DaQEMx
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JyqXuFgi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/5] idpf: implement Rx path
 for AF_XDP
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alexander Lobakin
> Sent: Thursday, September 11, 2025 9:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Simon Horman <horms@kernel.org>;
> NXNE CNSE OSDT ITP Upstreaming
> <nxne.cnse.osdt.itp.upstreaming@intel.com>; bpf@vger.kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/5] idpf: implement Rx path f=
or
> AF_XDP
>=20
> Implement Rx packet processing specific to AF_XDP ZC using the libeth XSk
> infra. Initialize queue registers before allocating buffers to avoid redu=
ndant ifs
> when updating the queue tail.
>=20
> Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  38 ++-
>  drivers/net/ethernet/intel/idpf/xsk.h       |   6 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c  |   8 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c |  35 ++-
>  drivers/net/ethernet/intel/idpf/xdp.c       |  24 +-
>  drivers/net/ethernet/intel/idpf/xsk.c       | 315 ++++++++++++++++++++
>  6 files changed, 405 insertions(+), 21 deletions(-)
>=20
Tested-by: Ramu R <ramu.r@intel.com>
