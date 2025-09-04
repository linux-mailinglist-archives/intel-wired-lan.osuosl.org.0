Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3277AB449BD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 00:36:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4A1560812;
	Thu,  4 Sep 2025 22:36:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HcxGQIOotezi; Thu,  4 Sep 2025 22:36:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFA066080F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757025400;
	bh=LhbDSDREnxsTXpxsymn8TfDwoQkUNvkUERklMoUzfoc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vHL5WHb5hNogKA+vZ6bK7Kgfd26nRwLw2OP9IHOABfP2kSPoMKUq4rcGuJtYW0IGY
	 r4hxL2lcIGwiKj4P6VrhaoZLa3YIbDsKpoq2hwid18mPQYGgHBgXrt9IyFDS7R+8E8
	 J4/fMxf5GfZiwkNo3v7oGRpjA6hKHMrIsgGtVph8GUff2vwfJDjV6Rhwb22nZsYJph
	 uCBQzE6UevxKcJp9/KwK5EcYAXnujuNUz9/RBIqEEWRKYh2Rbn+2Ty5cRlLLZtfwcy
	 e2sU6lKGxlx44UqTyYE2bz5GnJ5dggMBA5wP/nMUFnk7gZtFkztULIEIgX38Ha7EQY
	 4HqTNLNVzs/mA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFA066080F;
	Thu,  4 Sep 2025 22:36:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A7E9B69
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FF7180EE1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:36:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hLl85MUEi23Y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 22:36:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 321AB80561
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 321AB80561
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 321AB80561
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:36:36 +0000 (UTC)
X-CSE-ConnectionGUID: Uim6QkQ2SvWT9R1CD+kEXA==
X-CSE-MsgGUID: ceQ8Wm4ARQiboRkoG6KmkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63211199"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63211199"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:36:35 -0700
X-CSE-ConnectionGUID: iLphe5n8TDuizRdHg93J9g==
X-CSE-MsgGUID: 914Tb4fLQIKYOSNvFkBUbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="171241351"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:36:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:36:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 15:36:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.54)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:36:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G0DJ40jiz8ar4JoSNjwRUCaYWGbHkmyiZLgm14lPpjq7u6QpYF/6UsziuCazMj7twOYq0x6KqD/UsQcTxGGdTcBXGdc+iwfWjOTpJ4g2RllztYBMCbTLyysm0ugVGRfXNTP8WDEN3NRNKBFcpKOKTQ5hLsQCSoba1yOpDIaEk5p3SAXDh/f+rGqUtF2Ra54t4ga2+8Hn4rkXnOYfw5dFP7g/GAaTWK21Yt4QBXslmwIGLS0BlDMfoccyObXk/wCm/7z91pTqgnCh1s5y/29OTiUJkOLUECHetBuhvWi+OEAHHDmEwJtewrhO4OOKf3LOB1z/vXNQLBKPX3FrZrKj+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LhbDSDREnxsTXpxsymn8TfDwoQkUNvkUERklMoUzfoc=;
 b=kXZgCJOcE0sBsgZ01QcDW0jTwj68xeK0nn0DvOU0Kl2LCVQ3VlXN5tfExrmjMTZfgRyiJsuJvx+8Bizb/E6UHWUrOmo/w5DzZCNbtuCcmDEg6DlOl1hTLD5vmorxd2xNwLrJUDQsCn0MQIbkibpNl3ZeONfN4DCUq6yITzjsp+ihAib/8drzXIibKcMKrF49E6JTlsmNpAD+K0+oEXpMOHLmvironeO/MlaDQIHDPQIASeI2kjBYx6r4LG3Bkbyl07LwRLWpXunE2AqzVdazZ+K4rgD2P47EBxoioIAp8Faet5A3QS1lgxsFzFbHtWQoUb8FqxwdCe30+FnjUxQTXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CH3PR11MB8382.namprd11.prod.outlook.com (2603:10b6:610:173::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.16; Thu, 4 Sep
 2025 22:36:31 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 22:36:31 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 9/9] idpf: generalize
 mailbox API
Thread-Index: AQHcEy+Tj3oR25Q1hEKQvu4nbf7jFbSDskcg
Date: Thu, 4 Sep 2025 22:36:31 +0000
Message-ID: <SJ1PR11MB629746A4453C37CF8A9337859B00A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-10-pavan.kumar.linga@intel.com>
In-Reply-To: <20250822063215.3911-10-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CH3PR11MB8382:EE_
x-ms-office365-filtering-correlation-id: 63ba3627-38f1-4a4c-51eb-08ddec037ea5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?blT/H1Pv7lQW23wbArkZYrv2yTkRmLtodVoIKmJCZGjhfSmiuvEkO9yBnTm4?=
 =?us-ascii?Q?0U8ov/el1zClF8s3fVfb2NHdGkYBOoIN4wYInVhXNC/bUbL9JQT8nO2n/A+j?=
 =?us-ascii?Q?sepMBojH8XrMLW5j8TTndDMsTFsvhFM7bHDaplwQnv1+UkZDRX7BFmp2feCR?=
 =?us-ascii?Q?+NEG00Z1nMCcHGljvh/CAvWWfNICWPPkJgSkBrNW/ZwxoXz7BlYh8hxb0QdN?=
 =?us-ascii?Q?zl9pfny97sp9+yAsB2vJmFNdtb2BnnNJlVinb+8KwCraA65TZwfgUjdUW1XT?=
 =?us-ascii?Q?xGM3/i1sWdNxWB66iWg0Xt5FrWDjCCseyZXbKlsVxAcYtEhldmWo9jebzZq6?=
 =?us-ascii?Q?kDy93EL5S/Wy9PxBoNjpP4IC6l1FS/JZCmnMikBl2ZTiUFdNvKlDC4pJjF9+?=
 =?us-ascii?Q?CQJ+rvSInTNOKd58bRDR6MQ8Kk/+Ss2Sq1jX4yi5kS8M0dTgTTuwH+TKnukY?=
 =?us-ascii?Q?xIGlHP4sCdcoOBJ1E6moYcqYyNF8eP+lcxDiv7Ln0GPXeEVVc8SNzYIqp17M?=
 =?us-ascii?Q?rsEcgiaUuWfJKAFGZxHFnwz9FFwIABN5ZSwDEtRhBGhojs51lQJocApVwEnB?=
 =?us-ascii?Q?rMnEgTGjeMNNmwEZeG2NPe64VY32P6RNSz5o+e/h12mkzs06e7y+BMFc2uzd?=
 =?us-ascii?Q?pY3ZZfNl9xFno3hmZPtGDcaOeLMoi4WnA3eL+Zm4Nyt7/ncgIwTY7kKACkkw?=
 =?us-ascii?Q?z9WTP3PDjDYMZDsCvtokBESi516cJ6uQC1LKm/zfsPj5QJ1uZdFxzjxybGWC?=
 =?us-ascii?Q?vuJVvfjJBsx0e12CWgsyMSMdxX42yPIP21xAqm8JSwlSH49SuOoPqgqaazGm?=
 =?us-ascii?Q?4Ifl27zZp2XdUq8pLAZSO53k9pXcNNgve55D0AwyHzLxqhoygzZp6aMRpVP7?=
 =?us-ascii?Q?Go1y8+4jf81UL481D+PkDQ1Oc9L78mdck6vo4i96h9noFkOV7QuyTEexKE0R?=
 =?us-ascii?Q?DmS/QhIE22cpfgjJvesNtlVDP/kFAj6rHwShwbuyLUbDoiSoPB9/bqtBsRYz?=
 =?us-ascii?Q?apFRtiJCHRVaDklc0mG8kM7z3zNfDT7wQ/kJDkwcuK0cY/s2oyAa0cORA4HK?=
 =?us-ascii?Q?zy2JCLYoTXQxEbphQt/dmqgDdSDxGYYhePeZ5w/d/4sCyJXDyy8W1CbFnCGZ?=
 =?us-ascii?Q?HNp5j29ylEoLAyLtRtbmcP9N8A/nOvtFZ+ZWUlkLoW7aEg4N75jyY+3w8bW/?=
 =?us-ascii?Q?MEgagwgEvOL0kfeAX9aE1rNSY9eoaC/ALJ18lR4F/buNs/bHexE7Onbnye5J?=
 =?us-ascii?Q?QsxsKSADS5j5EvXje/V8bbwmIw2DYxkdr8fSo8YbH/bN5mvt9iIH1lRpxh/6?=
 =?us-ascii?Q?njEhOLS7Lbx0O8jy70tAYm+M4Rmx5coiksqhJEt6C44x4LR+V1nzIMQ/oIaA?=
 =?us-ascii?Q?Eke84aJo2wWPFvDIr5P4yelQYUL8efhvnwK5ccBeTE8hf9OJxIeDV0ddM53w?=
 =?us-ascii?Q?3tRim8GT2xNjwnAg6RAn9KvAAPR05QyQ+0i570magFzeksXdXBN8lw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+JDUqnOmfL/h0eRI4qa1KYGD1HSsJg5+EkEiQLhS2wp8Ifu+RCtta4G2PEM1?=
 =?us-ascii?Q?n5Ya9LrUiXH4ugbLQa0Wr1rH0xu8RYskc8o3AIMUJN3BOdjgqhb248uuwcYQ?=
 =?us-ascii?Q?L1RhTBpk5dK7KGe68MHGNn2k4uA65yK1g8a9cHnwF+RiqZ0UkSGjIIvDCgRV?=
 =?us-ascii?Q?stm0R8kU1T+uHs1Qy7sE5YMiSPQ2JLoERVePXrQD+Yv0oEYPOmg89gH2gEZx?=
 =?us-ascii?Q?XMPt33toAlEh7QUviq2jyNb1cbaCOfGU9sfyzyh4PGzXVQ63igVkR3rrS8aA?=
 =?us-ascii?Q?ddn06kUSU4vo4B9PpInBpBNdVJ2vkfYeQ92jbdqqL09a+x3atXXoXJ/I9fnw?=
 =?us-ascii?Q?slxvdzJoAsfBmzy9S3q8dXtOFkxhIdF4bB6y1+NmJAzQRVZ7UTDvU84rrHaJ?=
 =?us-ascii?Q?gNuiNp8YVXAfkvS6ebqPfIpeChhCWTcHQaCkk+u6+DmogTAhJVtMKTofqJlO?=
 =?us-ascii?Q?mRorqQ+eaMgG7i57+zYYeUbZ1AVmvZPMXoX5Qr11G502gqcuakAk2vjKsIr7?=
 =?us-ascii?Q?YiXcmQ66otTMshJK+fK0DF2xWsc7oq3CQhDcFKLDSxMWBRRm/mXCueQV2SvT?=
 =?us-ascii?Q?GA68DgjL/g8+PItBOmjII5+zacqCAIdQlHyE2DFVohk/1+sgO4v6+XEhEBUK?=
 =?us-ascii?Q?DTk0kkkiIuS/9xhLI9pMdWe6yubB5N8Ox41q7L4cSdiK2GDxd9p0Zkj1NcOb?=
 =?us-ascii?Q?fDYQ708toTRpz1m8BEa39toPSNFwuiyX8aZCtcBQKRibAQnL06fwDsXfDZvl?=
 =?us-ascii?Q?lImAqd5yBd8x4eSHeZ1ZyGXWhkB5DcKoSa6CIDEPq4zFKG3uFmIEQfrSl2ZK?=
 =?us-ascii?Q?mNdQHj+3xhpJS40+PqVTxlbF2A1PlVtHZd8FFO5z/qH/vx5EPA+wbyF+AZea?=
 =?us-ascii?Q?Eh5/s9X7Gga7TBV3jxBZOabAscA/T9SoSFeDDwnP5FhVLBlpDFWpPLE1x6zH?=
 =?us-ascii?Q?XXLI/JvH0aShE7nbcpl2iNrHcvDgCgdVBjJia9K/8UR5fWODS9Fx42izQN7Z?=
 =?us-ascii?Q?Vy6IVkq2NN7jYWxKzFDfjI7vyum/ues3I/2gr5Fq1dJBE3OpZkZZ/ahGqpxX?=
 =?us-ascii?Q?zhxceeV8gC96DSxn3NpWh9eZII/SqxmO18coiGuMVRN3WGfz/KdCZCFNJ3UU?=
 =?us-ascii?Q?8pwmwPbOX+pe+zS62oS3uGQeTeF8AodtzpxyQ6cmHOnW7HVhg0J73ThTUEVE?=
 =?us-ascii?Q?xzdV9MPnHcKx5tMS5ZzFlOrFxH0H3qRs33Cyq1SvZaBDPJz7Y8s47vKPOWxv?=
 =?us-ascii?Q?5PKNNSgwjgszZHUgQSBLXki3E5fIyyeMWJGTzhbfqAAsNLE5VIBBrqCv0sHB?=
 =?us-ascii?Q?ZTxLDOS2q5qbFyfX0dyzjyLg4SPjn8IymFqWotvxQViY2PRlGTfBQurbqKS3?=
 =?us-ascii?Q?RjWPg8draQ9mJFplzwYHjObwLwQ/DsdlQ+9oiOsT+RfcidQLmCTDo3D4L/UO?=
 =?us-ascii?Q?nsCCo1oyES2Zb9GY0DMQ1DziLZLmKhqw50HlOhpu1I3XAumzH+52X/qjpACR?=
 =?us-ascii?Q?wIAaptlD7u+dYuTR0BTBrhc78Qv0UC7taclCMiUl+8An59jK0xxCgR48qjUv?=
 =?us-ascii?Q?6+GzNtuUcGak5t7nXIOu4Q4caVqsVGcbZoemJZAk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63ba3627-38f1-4a4c-51eb-08ddec037ea5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 22:36:31.0263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NJL9wNno/Lmyp7+/3rJRLOIndb+vV+q8mWUVF2CocaJSS06hXrj8eSV/0ZBXs+3bj4W8FdAH0YQKPuLu+yO92Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8382
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757025395; x=1788561395;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LhbDSDREnxsTXpxsymn8TfDwoQkUNvkUERklMoUzfoc=;
 b=Bjpqtf3ZFLK55QZOe8PJJ/zFeBtoL08JOInwuHgKCvHBfa4q8C82RkwR
 RFG47Ny/Tcbt7NWYsU6/7Pkz0YLY/+FKECCDpL/TKrIGh7/fDr8Q4uaiJ
 Uhy75KbaWYuipIDfsMkmIZzI42GF+oA0czVUoJ0u3OltPSHnsf2YDygBJ
 7/yohvH4IoP0pFiY2DqdR6Cf9k2xtj6UImBt7oXHbAHqn15XbuYpCsUj+
 cbQrifoAM3KhNiQoNCk/x7z3ou1lLpHEkFtrMlZoce8cyPPcYGEqt9B9W
 8zU3M6nwyUXtGWvL+T2uffTdwyeuUCYpVt5AS+Lb48sbRLUy61y5W5ikh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bjpqtf3Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 9/9] idpf: generalize
 mailbox API
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
> Pavan Kumar Linga
> Sent: Thursday, August 21, 2025 11:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Nadezhdin, Anton
> <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v7 9/9] idpf: generalize mailb=
ox API
>=20
> Add a control queue parameter to all mailbox APIs in order to make use of
> those APIs for non-default mailbox as well.
>=20
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
