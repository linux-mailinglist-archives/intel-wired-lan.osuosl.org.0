Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5007879763
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 16:21:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D02740740;
	Tue, 12 Mar 2024 15:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m3DLX7TqHWvF; Tue, 12 Mar 2024 15:20:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E3F740730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710256858;
	bh=uCLwVqil365xl4A85uv2YWIVfb4AzNOQ8+6zWAThyrQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=97sN88MJl7F3a+leTIA2Lc6n74ISAJaGyLEfq3SEg7cm3+SIV2jWWqITKIi+xk7j0
	 uMjqfbhcDRs87POkr0lnZueT+RC6R005NPHc+l+pu0HmcORZQ8q0bNW25k50m6x6+6
	 WgswWDTjcMKfzjRxSGRTcyKjTKNZ+hnNex4mYLylU/pZl+Bu1PDRHrPZ+ExqO9+1X2
	 mWeknss7TBH3CQBGTdVzWQ/IYCRM0+R6I9XNq+0qhNOig21WV0fwZsuFLrJQ5IvDOz
	 To8HdrTa1ckvxrcw6WEBTt7yfHl7nDeF73Pa8ITg5lo2af72yY1iKAkC/k1JTgFYCg
	 oipdflLlwJ9Og==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E3F740730;
	Tue, 12 Mar 2024 15:20:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D63A1BF325
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 15:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1902181ED2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 15:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WaeX5791ygwd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 15:20:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2513D81450
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2513D81450
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2513D81450
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 15:20:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="22490669"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="22490669"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 08:20:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16226705"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 08:20:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 08:20:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 08:20:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 08:20:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGOSA1zvjaZ9RB6iIX4T62melRyhWN4pUsPhiQpxsOLIPLx0pnUV0Mri9QUolH5EU4lC2KsKutBm4dqdl0cUbzpXACJvdR3XeoXRiUXx4gSjGCQBEw7YuzUlQgM5hVafR+6b/CvNO5SvNC914iPyR3yUozXgodYlU2VwOPhcISaJZfPgDS9+D8y5/8psKH6EIfB1OeZJ5uBeW0r57/IlCP3oX0+pI2+ZE+nL+w711tx/B1pWT0Mtr+NOlpvifSS8Leuvt/DrnnEFf2t/Pm1gbYgsX45a5VR0qYWbbb3TIUYwLAe5XxJa4P2bBjhOKj8YQMhHPR/cn/qFaN1t37oVww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uCLwVqil365xl4A85uv2YWIVfb4AzNOQ8+6zWAThyrQ=;
 b=jgQsNsYuytHkme4VOgJ7bDrXFjbLMvwmELdb/kBq/sLFLmzy8RzK4oOQOdcJ//AaDKuq+fBPTwKPEuABRd1od+jMR44awYhYNMEKVu78fcaM7KS/bLEB/nZq+KYlPkVjH9SLrYftjk6MgPnm4cv+9ZBXTLMlvDCKL8KFQOPOa4zp4RwEcmAuVYEJyoQotwLZiEET2hoJLSZHrc1U2fHqb4mqFUw09Dk78meME+K7hZCsEsdS1/6k12m3DpYlV4hYuiXgo91NTrb3Q/R/J1LxRfg2PfXOUH6R6rj0IvXUtTATD++IUiaqD6SfGASENLl8tCGKJR4x0mprRk9A72fFyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB8177.namprd11.prod.outlook.com (2603:10b6:8:17e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Tue, 12 Mar
 2024 15:20:37 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7386.016; Tue, 12 Mar 2024
 15:20:37 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] i40e: avoid forward
 declarations in i40e_nvm.c
Thread-Index: AQHab+PUFaL0vBl6zkOl9b0I/KALZLE0QTUA
Date: Tue, 12 Mar 2024 15:20:37 +0000
Message-ID: <CYYPR11MB8429599415B9569BC174D825BD2B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240306163054.90627-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20240306163054.90627-1-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB8177:EE_
x-ms-office365-filtering-correlation-id: 1ef6e213-15e0-4b78-aeb4-08dc42a7f85b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L5xtvNKbQYgf4/wud1+/wYzQicxkADbch+dCBZcVu+L7tj1cOymuSR+e+7KCEvEr5egGAUq0VhnpEzngiTcUXniQGhAzTjkGX4wFi/4GCtASH6Inay6XIykTJzyryLN4gaLWGMNI0gIijvLXGfl2khmifJNK5Ge2CbHa8JSOEv/ZYgNvDtCOVh4RHgY9SJQ7ZhcM/cwx/hF8xGCRZCggcSdjX9HiurY0BAuzdVkfH8V2UOTw7MY/nFVZojYbE5YOUS6XiMgptq9oovCikRdviWXH05zakNJJwvXuLYfD2A2VZBHakKmhobVXiepI5pckwVYbBQpgJcsFyusnN1raaQFVDDJQklNa6tEBXSJFMYe/m9gBhim8E54Vo6qsy2Qc/SL7081mHPs9qE1AJhpSK1s7I23J3NPVn0tWRneFI08dRUKuw9nPQEYQqk9+u8aXvKQ58g6yXwzJmiVv/wr/yyvKSh7fiyiYOf8mMm09iSAdPK1E8Pp1Ab5ejT9FykEBwi8cSnv7FEG6gZAaLOzrKH8VQS2t4Td2sKpw2bv42XGN5uip2ATk1HPXAzU9Nw+2ofXjJ4R8kpegwyifAzuTPSYfWpkpX/uTk6ZMNwzpOWU8gE/eA/RrdNjXXw3mLQiTno8lkkBUIs+abYwDsfMmVXy79PE26C4dWIDS3KKmpCE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KIpYuSsLSBaf6G2B0+VDXnxIgi5DmzXia7CmJuz9KAzOlve4iCF0xl65S2p0?=
 =?us-ascii?Q?btzzXr+M880hh/OF3ffSsVXJd6ifFMIvhBqelDQzvfWfppGN3JOxMYdJMMbj?=
 =?us-ascii?Q?Cv9FCg+la/n5nMG9OemNwQod9HM0SajOY+b/1p5L2CdHtHwBNY/MVipW4v/u?=
 =?us-ascii?Q?4SKk7IyLq9Mxp67vv6/3on9zzs5OZp7QjSw/e+RRyERtqToXNC12pK7R4X60?=
 =?us-ascii?Q?OwXAxHBvbnKP/+zZB+ZQSTi7semVoPSLYGgXTQHeoONNrILXfVVj+BXE6XwS?=
 =?us-ascii?Q?hSXT1+kXeghG4WMEJlVuHsXX5p8UiVCxHAIT/M7ck3e4U3mr6C+6VRZfIRBx?=
 =?us-ascii?Q?cY+c+dfU8B/+bTa0Z8fWvaIEBOJ6VvFtxzjp3zSpKfQvk/o2Djo1o+NdcT9/?=
 =?us-ascii?Q?ELU3j2gFixc4IPk1Dacgt9mbqrdzTD/9fd5KFxKY/eso7Q/1PSAt3cnZCbp7?=
 =?us-ascii?Q?KJTgOW+avJu9/IPsXWLeDkQSv+xpkvE4KVYds1ACi61lMmT/loCeK/AKLnu2?=
 =?us-ascii?Q?LyIfLtsVlQxD752AVIfDb8OUrJnou5rL7tUfeY4BlEV1AiFnbKdPxzgmdrsX?=
 =?us-ascii?Q?79dKLrgqlExj7OC/PFc948AOTxmEP9VdLpcAhlpbes4Vui5u1C1RD4qL/B/U?=
 =?us-ascii?Q?FvwxSKiJ/YZ3yRvxhaK4pe1Yy4PXv56jUp2N8G+rGhZfQbuwOFkSb+K+Om6z?=
 =?us-ascii?Q?wG09La7GHJfXmasbiZz0mqV3Brbws0sB7mC2iuxzsL+C22MFC+V6EkSO+L+e?=
 =?us-ascii?Q?pxUjV8yugz2VLjc/NY7Zl9yg7HTdUr9s8M0XhiKL2WIEGlgxyzF4QwCzFuyf?=
 =?us-ascii?Q?9YzwNxNOht5lTFm3EBfP8UU/N/+bhDWgit6VMSt8HMGy/4kHZGY1dWSIE7Ak?=
 =?us-ascii?Q?Onjk7Lxog0nt0k9mhr/SlOfbcGd8H+wezE1DGJLfMKGsdDXsj+m4ABKwDkX0?=
 =?us-ascii?Q?F5UnWPcMQ9UbH8GT1he1QGuysuGdyhxZAcP9dEm7VxKgTj5QZb3Ky6oYYG1Y?=
 =?us-ascii?Q?CyQtljAFtR8nGvdZ4t4o/SDH/fRIHLVC2VShx7wdraNY9/K5Zqd/O+RjhJa2?=
 =?us-ascii?Q?+fV/9rltsyhHyO3/BmFGxDiwtsDHIi06YjJJ3ZV3m38/mozeXqc0WS9DkZuE?=
 =?us-ascii?Q?AmR2fqNlx5ZN2+OAcNCfqAJIIw8qbUYBSTrL3ay7ScgVpxmdWltPax0jWGwE?=
 =?us-ascii?Q?pBVN+MNfamy2CsTFeoi6xwg7efRoXNW9b1imtOHA9JWFWBO2gq9XZptqLpuB?=
 =?us-ascii?Q?j+ncrL5XrtLBAK5yqG/dmQJVwVMjWNgS34fNLR7A14qc4mFznN6o+bJvzYHm?=
 =?us-ascii?Q?Y6m61d30ofHXONRBtz9hpYEuZ+Pn7PdcN7OgNNG9CkChP8qfpG0psu1oNFw3?=
 =?us-ascii?Q?pzPcFjeTtXjFFRdAlMIzSrIrv6MK7g4JyXh9F2YdmKN4yIq2MueWOVMVT4+7?=
 =?us-ascii?Q?RgW2AZDTqu+ebqAAblpo3kLbF8UG4bnhy5tejQJV5UVMWLXW6CpUldrykpOf?=
 =?us-ascii?Q?TbEx8iWtqZ/lO8z4OAJGoY5DznBKjvinc8bBWong1jJb2pfFiZBya1G9oGPc?=
 =?us-ascii?Q?gwdo7muGXTgqNx9hXINO4LEjL/CWtjfy6VU5QKoCu4pFHyXAnDKt8Ic4EtZO?=
 =?us-ascii?Q?EA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ef6e213-15e0-4b78-aeb4-08dc42a7f85b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2024 15:20:37.3221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XIon+eV/P8JIDh16uyNA8gFqyUqYikcpoUyAOgBOnHIRUU1udGVDkQNdu364svoENxbAT41igIyscWOVuJ8C2VsaDR5Gar4D0fqopg3j53ZvPC/XsT4ZXjJVXxFVYygF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8177
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710256855; x=1741792855;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=meZjntFcT3Mk23qr+rteYaSNbl/kNwU1bive8EB8s9k=;
 b=TDuY5rSjSCXWKjI+QsEgfQ8ScNf+f1leY1pxtOvhMGdClv/FGcsV6cjE
 agIMi8ahjRMDKt9u9nosNIVnA6UZ5soZtsmhbfWpEE4TE0YBlrT/E40lL
 LTk4W/MEby6Y2xczL22wCI9sSsY1jPuaFFv95tICoZzzi3jGxngK56s6m
 lOLnO30VjbtlinneAdggvfAoXb7WZ60jieLaEIZnx26GsA1v9tRzZ3UyS
 6zEfpKlgQETZEfD1NJ6sY4FafesVknyXUIx+hWCxGiLhfDSJZS+hjrG3n
 hOc5+zyRskzyOOZoJpicyn1xeFw6CS3/qXm2KPawd+wyMwFbmA4BgHrC1
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TDuY5rSj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: avoid forward
 declarations in i40e_nvm.c
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
aciej Fijalkowski
> Sent: Wednesday, March 6, 2024 10:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Fijalkowski, Maciej <maciej.fijalkowski@intel=
.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Karlsson, Magnus <ma=
gnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: avoid forward declarati=
ons in i40e_nvm.c
>
> Move code around to get rid of forward declarations. No functional change=
s.
>=20
> After a plain code juggling, checkpatch reported:
> total: 0 errors, 7 warnings, 12 checks, 1581 lines checked
>
> so while at it let's address old issues as well. Should we ever address t=
he remaining unnecessary forward declarations within drivers/net/ethernet/i=
ntel/, consider this change as a starting point/reference.
>
> As reported in [0], there would be a lot more of work to do...if we care.
>
> [0]: https://lore.kernel.org/intel-wired-lan/Zeh8qadiTGf413YU@boxer/T/#u
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c | 1050 ++++++++++----------
>  1 file changed, 509 insertions(+), 541 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

