Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3FEAF60AE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jul 2025 20:01:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D84C412CC;
	Wed,  2 Jul 2025 18:01:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yz1YdKRzzScR; Wed,  2 Jul 2025 18:01:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B600415C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751479297;
	bh=JjkHcXGTW2ee94ngXjwFEDE+zpCrXc+/cQBBqIsz3p0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eMUIhEN+nyBVnT8nAaJKY9G/X5PvUGZjvO9Gj8feLr9VKaZDzf6K+DbsJANihbICO
	 mycQzmHmG1PVN1amzm97G/53Efuf2eKKyz62Xk0vbrl3W/ZLY1AQ2hhAHE+JMckFDk
	 aFoBZrGWGFk4CHdvnEe9zLiMbXEqHuKqGMbvpBO42fhOVK8Lg5buEa588Vb0E9dmsD
	 XG0UiFisC4aGpZKkyGOLmRxJNXIQl6sS1gmiJQPR9V/ZpAl1n4N+9cDX3325ooxPsU
	 T8hWBkxw5+2fS2K/HcBx33e/4+tDTcFrOOdfMXEimppW2ZQi2PYlt8dXo1/RiDz6H4
	 y3dkcg2LvkjWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B600415C7;
	Wed,  2 Jul 2025 18:01:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 05161128
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 18:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9D0A61278
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 18:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id diyLngLcArE8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jul 2025 18:01:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1EB0561279
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EB0561279
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1EB0561279
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 18:01:33 +0000 (UTC)
X-CSE-ConnectionGUID: UVOhQYEQRDmd7tu7DtXFuw==
X-CSE-MsgGUID: QzEVmrWkQ3Wkfv+rrvbiFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53901158"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; 
 d="asc'?scan'208";a="53901158"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 11:01:33 -0700
X-CSE-ConnectionGUID: cnZ0UKzYRZK5ik60sYHFSg==
X-CSE-MsgGUID: g6YfnnvARN6NlHMEnPDLVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; 
 d="asc'?scan'208";a="158186920"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 11:01:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 11:01:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 11:01:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 11:01:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EhDummQfW2mOsOVsEyGx4do/px2k/d10KpYFGuC3uT9NCMHFA9LffrDQuio14tolbTjIXumkotaOYlABOeae+aBynFpGKAXLgXZ0AXy5h97f8RVIfnvjPgHEXpKQKssGnZVEsk1HfGubifyFB6f3LPHHjMowW8YFniwTjCMF6Wo1+qzqaUeM+bXeWr914YELe2W81N5QGWdsDHWl0kjsvzJPVeEX8ubJAUPcjhZ5qc4BvK4vGbX0FbE9EtILrse+6v+rZ8tu8aGgkRNe3Le2Z5YgNF7NT6vaCK+AucJu/MORLWDuvVC9JshFCLht5Af6pCs98DxzLbwRpa46lHS5wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JjkHcXGTW2ee94ngXjwFEDE+zpCrXc+/cQBBqIsz3p0=;
 b=GazMDSDfGECcNGuYLka7HCzA28KyAEP0C4Q9DgpYxvV0tGuT1+BdIPRv75zH2gQ6cCBeoN/p5pvt+yzF1nyZ13vXqrIAqcsGwBtFWQuf8ALQLNUy1KU4CqIBGxrBU83+C5RlKMpCuppzIPmXMnkT0DS9xbj3CGFyJ1tVLhRSOZnf4FUq+XSlXNT9dC4PhoUeSvhLk8mPWWEidExcoOOy+aVWqiLOLzO1bWisHNXf41b0ZfWgCb+lqj+SJ0V71+j2RYsNy87J0Ht9eHBtW+Tqhwmrk2pUk6IRHpx5x64gas6Nmcc1oJ5r+jTNUtEJmHujoyO1fPEXIu712H8mYD4Qyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW6PR11MB8437.namprd11.prod.outlook.com (2603:10b6:303:249::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.21; Wed, 2 Jul
 2025 18:01:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8901.018; Wed, 2 Jul 2025
 18:01:09 +0000
Message-ID: <37367c26-cd08-411e-99a6-589094ca7620@intel.com>
Date: Wed, 2 Jul 2025 11:01:06 -0700
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bXJELiLXZQF74Yj77OSoBQ80"
X-ClientProxiedBy: MW4PR04CA0302.namprd04.prod.outlook.com
 (2603:10b6:303:82::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW6PR11MB8437:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a0693f3-9e64-4023-2e54-08ddb9926c7b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXF0d2JnY1Q2ZFNoN2gxMTVDS05EMFZMRU5MUjQ5TUF2dEpLSEpGWDIweWdV?=
 =?utf-8?B?RnU4VFRQcWNrUUliTjdSOE5ueFkzbis1U0M3Y0gzNUdhNWNqZ2ZYTFhKQ0dL?=
 =?utf-8?B?NUZJMUhVbS93Tm5BT3cvb0xxeS9MellpZFh1QVFGVmgvdENoUUNjR25pWWYx?=
 =?utf-8?B?cTY2SHczR1lEVlEraTNDdnZIa05aTlpTVmhNY0RVN29HQXByTURoVlhQK0Nm?=
 =?utf-8?B?WXM5T3JEVWwvaHJtSlV6U2JUbnRZRXN4bkdsSm45TzRyOXRQb0FvY2lGcVY3?=
 =?utf-8?B?V0RsOHVlRUpFbkxjUjJMeXErQU5wOHBja0pZOU9HeWVsT0JZWnBOeDJlaUla?=
 =?utf-8?B?YjZaS1lUWGVFTDI2c2dXYUgvMzg5aDI0VE5JNzBwZ1o4TFZYbXFITEVlTVlN?=
 =?utf-8?B?QkFtak9KeklzckJya3U0UUREOGVjYmpmVlBoRkxQR2dZaVFCcUpvQzhIM0dU?=
 =?utf-8?B?TUJYQ1ZMTFoxckQ5aFh3aXp3TDdhdUxQdTY5b3JKUUI0VXdtbFF3WUlTZEN5?=
 =?utf-8?B?UEVxZnc4SUs5RkR6eUwxMDhPeXM0NFV1V296bml5Mk9lZHBTek9ZaTJnZm1R?=
 =?utf-8?B?RWRTa3pQdkVvK0xoaUJrM1hOTnZvb1NGamc4V3lPODRHem16ZFBwVXVHOGpo?=
 =?utf-8?B?TGVYcit1RWhrSWc1azd4allFRzNsQlREcUJLVlJhZlVHRXM2eUw5REFIaFpz?=
 =?utf-8?B?bkRKWDd4WHVLSXl2TEJTNFZmcU8ranJ5MWo0Kzk2S3ZNdzRvZllCSVJpTGFS?=
 =?utf-8?B?TmxlVFpNdFM1ZjJNMGpHcjRreDI5QjBjb3YwTy92UGdRK2daVXllWmxZejVq?=
 =?utf-8?B?YzlCSTNMaFIrbzZqUEh3TExQQUdYdlZ2RWJ2NkM4bUJpVUdVcDVNblBsb2NU?=
 =?utf-8?B?aGt4Q1NBNVVtMktPQXhXQ3YrWjRGV1k5ci9EVWljZ1V6NS91TU95dktWV3NG?=
 =?utf-8?B?WnVpZVF6OTBFSnhGTzJVREVJaHNkZTg1SFk1Sk8vQ3liOEVMNktTdHNKTlBM?=
 =?utf-8?B?bjB1ODRqZDJ3b2VWQ252QlhVMjFicTBYMkUwMEJtbU9LZ0dEeEpOSlpTbDdB?=
 =?utf-8?B?dGV3Q2JkSGw0NmNzV1hzWlZwY2JnYVdTWml4UTgxN3NCRFNFVkJoYXV5aC93?=
 =?utf-8?B?M1RjMXBUNy91aGxFMXRaa2M3TUV3MjdEUVphdERvNjhEWmVkaFVVWUR5SGI3?=
 =?utf-8?B?OTJTUVhNQXlmcWVFWUtrc1A2MUpBSVY2VVd4RmFZWmVOMjNwSmx6TC9wTEZz?=
 =?utf-8?B?V3Bwb0xCU1J6M21yenMzRGhLNnNVQmZoUHdWSGtTTTJVenVyMXRuOTV0NHh5?=
 =?utf-8?B?UDE0MWl5Tmcrb3hFcWRVR2VybEFpdndXT0xydDNyUmYxaisvV1oyMG0vL2c3?=
 =?utf-8?B?N2xPVkRHTmo0bEN5cUJrbUhQYll4TTlZK3k4eVEvNkF6SDNwKzN0bmZzOGNZ?=
 =?utf-8?B?ek1hTUhxUFR4NGVBNEk4SEcweElEek1Ud2JPVnZBamMzZ29XRmFSbndaZnVB?=
 =?utf-8?B?OHc4Ym9FZVNsSE5paXBkNmptSjlwelhLYVFFSEZFOUs1LzM2OC9RRnhFdXJG?=
 =?utf-8?B?dUliMGxLeHlnaVB2SGlFWTVDdzZzZUhrWnZHazcxQjdkRTBVazljdkt2V21l?=
 =?utf-8?B?YS9qSXRRVTdRUWZlZVBpb2JINi8ySXBJUERNbWR3NzhxQjgxQm9XSVMrbDFF?=
 =?utf-8?B?ZU1QMjluV0dEMmlaNnBIQTRGSDlmWjNpcC9YMUpnd2ltRHJiWU4xTmttdExI?=
 =?utf-8?B?YXM0TjVoaDVOeFVNTEtmMG9naG92WENPODA2bmtWWlVpVTRNdWVnSkRxZVZw?=
 =?utf-8?B?RFdMWHpWcm1IaHJ3V2NzRjd6YmtEY3FHQTNyb29xT1lqMzR1cHdxT0IyTDFu?=
 =?utf-8?B?RGUxUmE5NmY5eEdkQStPbzhGd1BYUkhmTHBiaGhhTS9hblZxcnBIUUJVd0w2?=
 =?utf-8?Q?KlOU5lPkkMU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXRpWkkyOUEvVEZuQ3BCZG45bnpQTGRqdHg2aU0zdXQ2MDlmd0ZCY25HNHVF?=
 =?utf-8?B?b3ZvSkkzQlk4eUVqbXJLcnZ3TXJ4aC9zOVpWWVpPbW5sdWxUTTBpWlZDeVBR?=
 =?utf-8?B?ZS93SEhGVU5iSGY4NTcxV2xMYzFSNDRibjNVZlNkUmRRT2NRMTRLYUVSVWZj?=
 =?utf-8?B?UnpuNGQzVGVQcXpuSVVsOWpZOVVoenlUWDRiZTIram1QTlIzTGsvYWw5NGlP?=
 =?utf-8?B?bkdHV0J0bTJNam1oZjJtYmFtYzR3dTdmdzh5V0VobTZTQXBpd2tHODVEVFB3?=
 =?utf-8?B?ZDFFeGs4SmNKMEtUdlh3WUxENHRsWXRnS085ajZyUFN4a0M1b2ZKSWNYWmEx?=
 =?utf-8?B?WS93ZDgzemdnWDdPaE90Z20zSy9XbWF2dThia09wdHNhYnQvSTBPTmtiU0FL?=
 =?utf-8?B?cmQwb0c1THgwMjJNQmdlWkw5TzJzVUlPVUtGSTUvZ2xCT0FZSC9TdFNMRGNH?=
 =?utf-8?B?bHpNYlRFQlVxK205VWtnOUcrVytkRTY4UDJUd0VpQzJhZDBwbVlTMXBOeExO?=
 =?utf-8?B?MS82WVhEUXU3YTltL1kwYnY3Y1lUdjUwaERHT3N5bFBkUWlhb3B3VlJaOTVr?=
 =?utf-8?B?NSt1cDljQVJJMzFMeHd3b3pZbTQvVllYN2NMVGQrYTJQMHBuM3Q2cEl3QnIx?=
 =?utf-8?B?N29qTzRYMndaWGJONEFaVTRqa3hKSkJKSzRuYWlLZG9TOWtyeld1bm1NWXNJ?=
 =?utf-8?B?MGdmem9VUW1rRjdvUnRmZjZlK1VNb05GMWhqMVd4N0R1blNFNkRNWndPeGNv?=
 =?utf-8?B?djRHS25RbFVmNFB1QlU5S1VFRkdmZHRGcDlEUFA0NURwU1VJbkd2VHltdXp3?=
 =?utf-8?B?SkhJT0RiTmNPWXBYTGJiemhIMDYybHVuWFlQa1U4NllOd29HaUVTMXpSYmdq?=
 =?utf-8?B?WHRIOVU2Y2lnenNQcmlNVkZjNjBqeThicEptUXhzTnN2bGdITUNTQU1Id0Q1?=
 =?utf-8?B?T0x4cjNFMyt6bHlVL1NpOG9ma3JZM1d0cE15NjJYRHc3UXJQRWpDYlliQmc0?=
 =?utf-8?B?TW5TSlRJOW5CcWNqWTBCMDUrOFBZazl5cDV1bnhDbHpkWG9tcFloNnoydUZH?=
 =?utf-8?B?c3c2SEl3VTNOS1lGMy80WERzTnNkZFgrMFpTQ2l4V0R3WGZPOE41WDBiZHY0?=
 =?utf-8?B?ODN0Mlo4ajRab3gydnVOU0l4N3hMUTFMOTNJbjJrRTI5RVc3cVRQTzFrWlY5?=
 =?utf-8?B?aTdhT2NqYjBCc1ZKN2VrQzIxTDRyL2V2VGlJcDF3a1BVLzJFZUQrUU1hekt6?=
 =?utf-8?B?RWdiS1ZuM0pDR0REaWVKQy9oUy8vcGxRVE44Tk9QR2ZXWlpSSm9jeFM2andw?=
 =?utf-8?B?d1I3cWhXZGVYVW9kbVRLVlVkd3dQbU9tY3IrQ29BUUVzOXRrRVVwRG9RMG1L?=
 =?utf-8?B?L1R4WHFvekM0cmJiQW1WUmNGMWM1bVFTVzNjeU1MVUUzTWQ4RW9OZ0ZtUllO?=
 =?utf-8?B?QlptempRaWdlbmFTNW4rUUtPaVhJcTFMcWxCS0w1UWhJcG5ydGt1U0hMTEx0?=
 =?utf-8?B?ZjlYUitrWHpGQ2RvRHArS0RzMlhoUHRZUStlTW93L3dlVy9RSjQyRWpWdG5N?=
 =?utf-8?B?MlJaRXJKNWJCTWp5U2ZUQStpcXdqSmZ3MGhvRWFNcnpRREd3YUlGSFNYdjh2?=
 =?utf-8?B?QWF5N1oza2xic1FYWXpLN0RVWWpiekFaclZxSG1BTW05aWlNOGR4anhRdUNR?=
 =?utf-8?B?VURCYjZNcjZoU0ZWUVNQM0lRVE51UHF1elEraTh6MXBoZm9hQ2xyZjNSczI1?=
 =?utf-8?B?KzEva2VhY1Z3TjNyY0Z5OFpxSDdLR1l5dXdNNWNQVHRQTlBodzQrMWF1Vzly?=
 =?utf-8?B?WWgrOHVvWjlGU0RYd01reXdOYUJKRCtqM3diRTZoMG5RZlAwN3dlQjArQlhL?=
 =?utf-8?B?a05GTFVlOTZudWVDRFVjK2xDRVVoOWM1OEw2YjcyOFA1c2FPOGZoRTFrenNi?=
 =?utf-8?B?UTBhbThrNmZHbkhTd2wwQUloOXNUMU5lTlBvNWhBNmFBVnlUa1hoT3dSUGsw?=
 =?utf-8?B?dlpLSnJzWHoxMGVWSU9lTWlPWklHVWlGejVBYytwTlZFaW1Ia1N2SmFEVS9q?=
 =?utf-8?B?SnYrbTNGdWVCa3FhNk8vaFllMGhGWGo2aG8zUSs0bDZSWC8vVVJGL0tFR0Zs?=
 =?utf-8?B?ZTVPcENWdEpNUTBsdWdnYzhnR0p4V0NlM3RXeXVoWnA5emFKeWU1MFJtc1Bo?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a0693f3-9e64-4023-2e54-08ddb9926c7b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2025 18:01:09.5755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rSFIStIUroYGFT3CzTOnh8IlGK+c1pzf3amLg9LUrfxBfd6lK18mM+S9fQDYKO31ELsEvSEPUSctgPv60ui4zc64N1qtHBaJOYpg46dqrJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8437
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751479294; x=1783015294;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=HV5JvvpsMarV99NUu/Q3gLfYzI6MgaUjC15Os3UkxHw=;
 b=lIGfjhBMFSpxE47Fz/0b+CEgma8Kms7JCMLRe+lgJScSEJ9pKKyjxQ54
 Bc2ukJzhcb/mpZtutb+OyR1jIlPrJ1KuEeo61U3+dErIsYvQ3UIwu8ToV
 87bB+pdQMAUK1ZAme1WuJHMXEhWRXcVvLXj3hHA9zsoj/XvHtU/yAOc9U
 +XcDF3MVQAJxbuCCKPra2qeY0i5yhMfKwUP3Kv08mRfvxIHzqYB+C6pLR
 n4kW1TdxvQc/3Vb2gMUdAYW6z607CgJfCIkf530YxmtxfMlYzEqAIXKpF
 36Ko5pW/TACZ0WBLhaYCP7FlNNatPT/p0NF7p1eqahYn2a2PGcojZFlKB
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lIGfjhBM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------bXJELiLXZQF74Yj77OSoBQ80
Content-Type: multipart/mixed; boundary="------------mKU7Ha1FGF0V0yNkZxTkO30u";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <37367c26-cd08-411e-99a6-589094ca7620@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
In-Reply-To: <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>

--------------mKU7Ha1FGF0V0yNkZxTkO30u
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/2/2025 2:48 AM, Jaroslav Pulchart wrote:
>>
>> On 6/30/2025 11:48 PM, Jaroslav Pulchart wrote:
>>>> On 6/30/2025 2:56 PM, Jacob Keller wrote:
>>>>> Unfortunately it looks like the fix I mentioned has landed in 6.14,=
 so
>>>>> its not a fix for your issue (since you mentioned 6.14 has failed
>>>>> testing in your system)
>>>>>
>>>>> $ git describe --first-parent --contains --match=3Dv* --exclude=3D*=
rc*
>>>>> 743bbd93cf29f653fae0e1416a31f03231689911
>>>>> v6.14~251^2~15^2~2
>>>>>
>>>>> I don't see any other relevant changes since v6.14. I can try to se=
e if
>>>>> I see similar issues with CONFIG_MEM_ALLOC_PROFILING on some test
>>>>> systems here.
>>>>
>>>> On my system I see this at boot after loading the ice module from
>>>>
>>>> $ grep -F "/ice/" /proc/allocinfo | sort -g | tail | numfmt --to=3Di=
ec>
>>>>       26K      230 drivers/net/ethernet/intel/ice/ice_irq.c:84 [ice]=

>>>> func:ice_get_irq_res
>>>>>          48K        2 drivers/net/ethernet/intel/ice/ice_arfs.c:565=
 [ice] func:ice_init_arfs
>>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:397 =
[ice] func:ice_vsi_alloc_ring_stats
>>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:416 =
[ice] func:ice_vsi_alloc_ring_stats
>>>>>          85K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1398=
 [ice] func:ice_vsi_alloc_rings
>>>>>         339K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1422=
 [ice] func:ice_vsi_alloc_rings
>>>>>         678K      226 drivers/net/ethernet/intel/ice/ice_base.c:109=
 [ice] func:ice_vsi_alloc_q_vector
>>>>>         1.1M      257 drivers/net/ethernet/intel/ice/ice_fwlog.c:40=
 [ice] func:ice_fwlog_alloc_ring_buffs
>>>>>         7.2M      114 drivers/net/ethernet/intel/ice/ice_txrx.c:493=
 [ice] func:ice_setup_rx_ring
>>>>>         896M   229264 drivers/net/ethernet/intel/ice/ice_txrx.c:680=
 [ice] func:ice_alloc_mapped_page
>>>>
>>>> Its about 1GB for the mapped pages. I don't see any increase moment =
to
>>>> moment. I've started an iperf session to simulate some traffic, and =
I'll
>>>> leave this running to see if anything changes overnight.
>>>>
>>>> Is there anything else that you can share about the traffic setup or=

>>>> otherwise that I could look into?  Your system seems to use ~2.5 x t=
he
>>>> buffer size as mine, but that might just be a smaller number of CPUs=
=2E
>>>>
>>>> Hopefully I'll get some more results overnight.
>>>
>>> The traffic is random production workloads from VMs, using standard
>>> Linux or OVS bridges. There is no specific pattern to it. I haven=E2=80=
=99t
>>> had any luck reproducing (or was not patient enough) this with iperf3=

>>> myself. The two active (UP) interfaces are in an LACP bonding setup.
>>> Here are our ethtool settings for the two member ports (em1 and p3p1)=

>>>
>>
>> I had iperf3 running overnight and the memory usage for
>> ice_alloc_mapped_pages is constant here. Mine was direct connections
>> without bridge or bonding. From your description I assume there's no X=
DP
>> happening either.
>=20
> Yes, no XDP in use.
>=20
> BTW the allocinfo after 6days uptime:
> # uptime ; sort -g /proc/allocinfo| tail -n 15
>  11:46:44 up 6 days,  2:18,  1 user,  load average: 9.24, 11.33, 15.07
>    102489024   533797 fs/dcache.c:1681 func:__d_alloc
>    106229760    25935 mm/shmem.c:1854 func:shmem_alloc_folio
>    117118192   103097 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode=

>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_al=
loc_page
>    162783232     7656 mm/slub.c:2452 func:alloc_slab_page
>    189906944    46364 mm/memory.c:1056 func:folio_prealloc
>    499384320   121920 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>    625876992    54186 mm/slub.c:2450 func:alloc_slab_page
>    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_p=
md
>   1014710272   247732 mm/filemap.c:1978 func:__filemap_get_folio
>   1056710656   257986 mm/memory.c:1054 func:folio_prealloc
>   1279262720      610 mm/khugepaged.c:1084 func:alloc_charge_folio
>   1334530048   325763 mm/readahead.c:186 func:ractl_alloc_folio
>   3341238272   412215 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> [ice] func:ice_alloc_mapped_page
>=20

3.2GB meaning an entire GB wasted from your on-boot up :(

Unfortunately, I've had no luck trying to reproduce the conditions that
trigger this. We do have a series in flight to convert ice to page pool
which we hope resolves this.. but of course that isn't really a suitable
backport candidate.

Its quite frustrating when I can't figure out how to reproduce to
further debug where the leak is.

I also discovered that the leak sanitizer doesn't cover page allocations =
:(

>>
>> I guess the traffic patterns of an iperf session are too regular, or
>> something to do with bridge or bonding.. but I also struggle to see ho=
w
>> those could play a role in the buffer management in the ice driver...


--------------mKU7Ha1FGF0V0yNkZxTkO30u--

--------------bXJELiLXZQF74Yj77OSoBQ80
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGVz4wUDAAAAAAAKCRBqll0+bw8o6FyC
AP9ytN9It4diWCF++nsRvdRzfWFeHwoXtdWVnNSQmh2ADgEAqNBZyniZgez7tpLIyK0H8oys6VhY
CrFAJtHXteEl6Ak=
=vf7d
-----END PGP SIGNATURE-----

--------------bXJELiLXZQF74Yj77OSoBQ80--
