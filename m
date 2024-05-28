Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27D48D20FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 18:00:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 798644157B;
	Tue, 28 May 2024 16:00:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fQFXkcs-SpAM; Tue, 28 May 2024 16:00:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65DCC4157E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716912052;
	bh=9+pA8rY8nay0fvrWiSVNBrgm8oieDpKx8Rr3tlD78nA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e1JwGotxIFQZb5Hw5xm7J4CPsdy3L2cYkuKk8ghlDV+TnPFaft0XJfvar//IHy+6t
	 btfsKpbSOn67RwwV8hbtDu7+XXLHZBplXzlNlgauZRtGjSw6WzYYdF4sYfICoWz6LZ
	 07ApEbVTRMTD2XsZmcPyjmhCNjmnlmNTIVkeC4SMaoHUmZCJxSBv+FpwQ5MYxXH/kw
	 TadcYiK3Eqjx+XtzqQpMXB95WzMQjp5L4yWoqMHYYwf43/B+CQFwmJDyezVbUXUFWb
	 MGTdXb6opaM4QrIq3HvUyC0Veeg1yVYESWIVj58jVWyHkY1GXgPRUuWdis21vXAIki
	 EDj5yiScgh6fw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65DCC4157E;
	Tue, 28 May 2024 16:00:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A99C1D29FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 16:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6528F40582
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 16:00:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SraiZeacsgyq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 16:00:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DA7D84051C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA7D84051C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA7D84051C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 16:00:45 +0000 (UTC)
X-CSE-ConnectionGUID: vmGW/tMhT6yFIGaIdYBrDw==
X-CSE-MsgGUID: 8zQOFq3LSZ6gdRjK3V1Xng==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23875171"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="23875171"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 09:00:34 -0700
X-CSE-ConnectionGUID: l/9SV4jGQk22/NK5BaN+BQ==
X-CSE-MsgGUID: T62lRdNkS86XmSXou5gEkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39974688"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 09:00:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 09:00:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 09:00:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 09:00:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K3ZJ1FUgGwBa+Qa8caUMpXGrqOuQMNEN1oAqDReMkTtYE1r5YQlksVlImmxe0FDQ7KoCh+dBiySWXurbnwco6Pl8lthLgvdk/uZIw99S55TjRzde5za3qrzng6fFOB/cBQ1FA10F00oFmWl4AJ7hRmgOYj8Auo/GKRhiY4Vj3Pa48/osFtpyyAOdpCZ2kyzRK1I/8f+rsMNgJvAxGAJyCQOHOVdPBGy7w+H9oA9VQgUDCEXGLX3kmsTAXiVBQCwl/0jdK3Pio1ci9GPxk9GNeK4E+btl5TKCYpTrzkf1JlcMO+9oQp8hmNaCwo+LzXfkcnDQNHRP/NLD3qjoX6RiIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9+pA8rY8nay0fvrWiSVNBrgm8oieDpKx8Rr3tlD78nA=;
 b=GMzz+6qawPRGx/jndAbza3fkrHSe8BvXupb+VWS3r/1GZa8KCVK4LSRcZRy0nTI5C9PvfvP9qe/InS3eAE12yD7rYG3SkJIhp2lRBAexWnkPhfoBxpajx/vRPabzZtTqEyT6ihWRdx3UmnUdvLZ7aAKhXP5Wy1JK2j2nMpHr5tw09xWx2vzsEQCnAPn6CTLup/fxJZLiK0aOFr4khlyPcH0h4ELpQIQzMK1ndaB8k/QUvBAUkZrFcQ+ni0Uw+Y0/dgY1xiHzVyWDPoBgJxn07wXK/2AjraU2FIcNBLOQNyM7gqiaizbNFdv4gAioO5OU4cPMi1Fh9m8oYtNtZROvhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ0PR11MB7701.namprd11.prod.outlook.com (2603:10b6:a03:4e4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Tue, 28 May
 2024 16:00:29 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Tue, 28 May 2024
 16:00:29 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: mschmidt <mschmidt@redhat.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: use
 irq_update_affinity_hint()
Thread-Index: AQHarJ26SQLRDeFtdkOWUljIoZHN47Gs0y8g
Date: Tue, 28 May 2024 16:00:29 +0000
Message-ID: <CYYPR11MB84290E94EB390A247995D8DABDF12@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240522231256.587985-1-mschmidt@redhat.com>
In-Reply-To: <20240522231256.587985-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ0PR11MB7701:EE_
x-ms-office365-filtering-correlation-id: b777b0f6-d544-4c8f-c809-08dc7f2f4bdb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?6YR1Op8/QUFYy3d/ep9A7NZUdUdfgyh/ymMBXfXqO7RQ0QAIRI6CLFd3wjqG?=
 =?us-ascii?Q?vNR/EOVkUp1Yc4NkmQa55GzBgHVvXbNPpXKoIB9gb3dCZKLGiY9XywtBm/Tt?=
 =?us-ascii?Q?ORqSFAFicYcsP1jHdYLec7zjh69dpuFSuURh6stu++dVeOrLU8J6zZDrBC3F?=
 =?us-ascii?Q?D/Vwwp3gPubvG6LfUnB7nSsuwiV+8uoFa62v/lcllMf0LRC89+6Y060HZIOk?=
 =?us-ascii?Q?lOQHNt1sCOm5gfUujw2S2d7udSsnz9qFYfIObn54783m3T+yfzgi/LAtwxSW?=
 =?us-ascii?Q?VzQqKhPTpWRAWQ2BXRs8q5o6X9tf18BIsxvIGfiP+K4yOwScqk9UfoWAzTrS?=
 =?us-ascii?Q?mfS+dkIOMbHxkD+6C8ue+aYCfHqSRHLjaxuuuUPg+0hkcpn7je+RT+circgQ?=
 =?us-ascii?Q?mwkYtV7pAZISJ8stfycJ7NJMm50S15s1o5SVdnHBNhL4kNdASAxx2zitXvsr?=
 =?us-ascii?Q?PS+SgvHNCA443ZQOpmT8MxLirzeSFTs2NxN1WV3hjoKHzWd+iuXj4z6f1ozs?=
 =?us-ascii?Q?Q7+Q32fiDcK5NKqJP1FLl3YV0Hx9pVi0Cczla1j2BOTkMe5koIySj/8Aw3Ek?=
 =?us-ascii?Q?vK+waotGiOL4PmJHrn3EKC1xx78Xd8w/ixU6KorDF8VuNhZqeHaIcoaYWUrN?=
 =?us-ascii?Q?6qVS2udIkAx0uqwXVXNm6bA9Ov0tvhkYE9eZpBUlZdBcI8LO7XNqVKmdY1VA?=
 =?us-ascii?Q?NHXSA64CrEsv8dX2Ue0ex3qkyybW+n0ozD7/CTGP/CQATJRzaEemGd2N3u5J?=
 =?us-ascii?Q?UKZOWYufzXgm629FGJDvCA1krJ8fJ3pRnu1fWb4oEIsf4Cl5/mMTk8/Qw/LZ?=
 =?us-ascii?Q?q3rZRjuln71lLLPMiUkWpFo7wOxbYkG2DwqeIkvWu7CI2+o6TLroV42nGnMs?=
 =?us-ascii?Q?myDEAUQ8Yo7PB5ryhjaU4S5aMQITcaHlczblIl9rTJKLDPkr/2ZitvW97JNv?=
 =?us-ascii?Q?U5FNARaGbFp/iFz/hKwXZ/SaxVWx+Cwy1jyVSuVRniPMQk5nqtUGA8w10dwp?=
 =?us-ascii?Q?jyhMFT1CVWa7Q5r7o3zJGqCZlytDsbhvsiRkhidlDbeSq410CLQ6ckCnNawP?=
 =?us-ascii?Q?9FhbgvVYdQwbUno3RFUtcmtZXcaGq+ewsoIATCi7srOMCDDJL5PJ2vS6jehb?=
 =?us-ascii?Q?KYW+jfnxuHfzBvavmNgK21BYG9UgP1AtkIJ5yXslvcnbaLWcLXjnzVbTLHjT?=
 =?us-ascii?Q?WGfMrHs6e+sQt6UpqzEs0LdgoPLvRmAIJZ8Jf1fcLe8BqredBvSGuGM9Butf?=
 =?us-ascii?Q?/p61C++3dFrGHxdSxZ8mYF9PpHp2ZeqX09SYPugNkw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pkR76sUKZXwLxIAfgZ7BKqw2G/35p7g3+ueMopdC8f2nt4L+yG8vsV0VwPA5?=
 =?us-ascii?Q?zT1m0qzSjkin17PrkyjK0Rd/+0VKholCdXh+P5ObO9dnVNiH0z9jw2z0TR0i?=
 =?us-ascii?Q?I8K7RPXdcXiaea3QSfYDendSaZsqkJRyHUJFGLQKuMzeYe9Ri+r238O2Czr7?=
 =?us-ascii?Q?azo+X71Aoz9t4RBcKaSafkbNW9nr5Q+kOEEkV/3VfGStD86zi30jlDVR8yVM?=
 =?us-ascii?Q?vPpY7sKYvQsn+enTDdtYC2gnQNvaMR5T3FTEz1ufTgLCewFamc8lZ19mCez9?=
 =?us-ascii?Q?84yUs8c8MxH/60tFeaKbZGXKDtd9FbCTOm2Sjlnnee+QLwXbSc+2ubVNGchs?=
 =?us-ascii?Q?OkCUuaCVfJ9pV7CANu72uJDTqHPhftsSN4U3pAFQvw8n/5mRcL3hgfR3+x5g?=
 =?us-ascii?Q?w//VJV5ELx2fckdFLelBPbvkVzUt7xuQflCa02XjTyrc/XcPIjqsERDxvUQ6?=
 =?us-ascii?Q?w9fMTeGTy5a8KboucCpyzrCGFIcoB/bvmGJ64SsFbV9Xmn9uL+j3WAGhtmJN?=
 =?us-ascii?Q?J0xdp7bdwQBzKQEW+fdBnWK1lT0vneXIUVwDWmnJC+Pm6MWZAQqS6NW0Z1Qw?=
 =?us-ascii?Q?Q6BGPLwPPJAjaA5OlNUePk4bEHd2zAGMH8R5eRqeQrfLTWDFfby3TfAv9b+p?=
 =?us-ascii?Q?bNVueuPdkg+N1cuBdC0GQhY4C7AbwnTGeR0Mg8dBAC0bWLjC7tNwc5RqD5Va?=
 =?us-ascii?Q?xXResFDJbR67hmocVPCLY+UtjwgM9MACDxC2ar4/kX4Z28fpFDWYybIJIagQ?=
 =?us-ascii?Q?HCV//g+ZWe6LuZ2efu3t+mbuvbe6KSBBpv0f+swF+6+90Ees8Hz7ZemEeL9S?=
 =?us-ascii?Q?sMt4nQQL5dPpp14tLHabBE80U29Cn+eHoP3niKfQ/qB8//CK2AEuIyhX95wE?=
 =?us-ascii?Q?zYMqDerwyrxuNI+38HsS7mnbFhYfD0n5iC+yLJ54u5v1GyH90ANIUp50mXbb?=
 =?us-ascii?Q?tEyv7JxqEamB4dN0ftVvAXUrwQdNmJfVrZPXySW2HTeflS0qVkVAFuXSU3sF?=
 =?us-ascii?Q?wASfsJwcM2+77k91AGMwTtJXlkhxoT1FxausKG7U6bcYt7Vytwog/NfX8cJL?=
 =?us-ascii?Q?NQPBW9Mgg/w5cgwrgnVU2rG5f45CggbVNtDwqCcYkmZO8ahIbyh2y83MhT2H?=
 =?us-ascii?Q?WFAiCsPeNNnmWwCshCr+rd1U4lKsHklvUhyjPjvZ2Tjs/iP3cAx+uI0+X+jN?=
 =?us-ascii?Q?PGHXp0EzExw2PkxDZjtjTM8aMAn2j3e8j7CtjAfjOTazzA2dkE8jjiO7eFKD?=
 =?us-ascii?Q?N8TrzHjbxZuBqxOFh1g0wOrCUyriYrHXcMBG9+PRJIFnSu4DjF3j0B18M4p8?=
 =?us-ascii?Q?SXiDjcBEtBkx/SaHACDgW7EPH5ICFs2BIduHMiw6G282/yEgeDLM+UZbDd/E?=
 =?us-ascii?Q?JaO1o6zUWm3Pon6T6PIeEn5i5Gnc8C17UdrYqLQqmHzGlLh08JvZO7D0Js/E?=
 =?us-ascii?Q?Tk2WgHIYGjJ1X//w9wCwzK5vqmaYccjy9hPpxSYnvc65bc67a+8ycMO1xSjJ?=
 =?us-ascii?Q?BJjNgMBhnfiUQCv3vZd8/haFluYxTZjsK9RqDvvVpkaELhHRuscmdsO84NAk?=
 =?us-ascii?Q?Ywoo2LQzIvFPCo/G3pRfZhVfmqe8HIWQrhl+G4WhX539cXVg+0CLN4Wv/jVU?=
 =?us-ascii?Q?rA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b777b0f6-d544-4c8f-c809-08dc7f2f4bdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 16:00:29.2051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 74f8PgbCZu7gjnfcnIT21NJ+6TWrbMpc6d32n0IaVKfp12FSwQhPbj4j8cvQG8Hb1oLiClurd55Gt5L1Hp5dmPCspa7oCzwREFjaRI7wG+Jm6BkfNqbQTLvAt10dkIjU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7701
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716912046; x=1748448046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o4zAr70ax6KsENkNEqeTL1zDl9X0KR3Vbz0nn/B2PQc=;
 b=nj6Zr/yPvtJ0tnFkLpg0xQAHfhexO31et7QosUpvbLCfUrPdGnRyFa/n
 dtANs7cnldzCIzZ25pYVoVI+NIaC6uJvjd7BIUi4zg+tsJ/kDjiQxYjGT
 niscB9HqoGrjtpkElprWX5W+4tovwHVjL65sc51/ZQaU+Y+VbuS31jIln
 /tTjhvQBhytuhbHVJDPAxMmo+kqJKkfMrkocM7XpRps+sYuSQJ4npY9vG
 JeuBlOSFdsa3pAf3DBjh3Q/4sXgx4Zy1WMxnZZNmGaxnlI9XEbZIaEYX4
 nL02ixR24Ssr2MP7Px/C7o8+3rQr3RIcTkNnhZc6KqMSUxEQcnQROf6NZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nj6Zr/yP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use
 irq_update_affinity_hint()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Nitesh Narayan Lal <nitesh@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Schmidt
> Sent: Thursday, May 23, 2024 4:43 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <an=
thony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Thomas Gleixner <tglx@linutronix.de>; Nitesh =
Narayan Lal <nitesh@redhat.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: use irq_update_affinity_=
hint()
>
> irq_set_affinity_hint() is deprecated. Use irq_update_affinity_hint() ins=
tead. This removes the side-effect of actually applying the affinity.
>
> The driver does not really need to worry about spreading its IRQs across =
CPUs. The core code already takes care of that.
> On the contrary, when the driver applies affinities by itself, it breaks =
the users' expectations:
> 1. The user configures irqbalance with IRQBALANCE_BANNED_CPULIST in
>     order to prevent IRQs from being moved to certain CPUs that run a
>     real-time workload.
>  2. ice reconfigures VSIs at runtime due to a MIB change
>     (ice_dcb_process_lldp_set_mib_change). Reopening a VSI resets the
>     affinity in ice_vsi_req_irq_msix().
>  3. ice has no idea about irqbalance's config, so it may move an IRQ to
>     a banned CPU. The real-time workload suffers unacceptable latency.
>
> I am not sure if updating the affinity hints is at all useful, because ir=
qbalance ignores them since 2016 ([1]), but at least it's harmless.
>
> This ice change is similar to i40e commit d34c54d1739c ("i40e: Use irq_up=
date_affinity_hint()").
>
> [1] https://github.com/Irqbalance/irqbalance/commit/dcc411e7bfdd
>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 4 ++--  drivers/net/ethernet=
/intel/ice/ice_main.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

