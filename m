Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A107170E5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 00:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46C8881FBC;
	Tue, 30 May 2023 22:44:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46C8881FBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685486677;
	bh=9FpMsZ2YRz6pctWZnCT1NknylQSe3Rmm7S48/t20RtM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cpYP7uPfY5RTgspGgX4YmnhYwd9AWh0ofrk5qAc7GZSZpsc5anWZt3a5g1FMIF51d
	 0YSIHTRpRMKxMfMdaM9BjXWjyqX+ulfwQlfr1guJ2lph75btf4GURRWFfQNfyMzMYi
	 ps7KneyfrVvfxEzPDF/n2SjRb6gc6g/4i+U23pbIorwHJwi5mLsjf8S9ijzo/adgAx
	 H+3mAVnAR5yNn2k/PumM/89rjt1uuPGi2T11+WVGE0CLS4GfK7mOR5GAXMcTgfLCt/
	 NRmtpEVdxmaLZkaxgrlEL11QKCKNOF1yMyqIUPz+A6rSfvmzREe4Czg4WioVHoAuJ0
	 S+tViZyM530zA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gdshw1DFJsEt; Tue, 30 May 2023 22:44:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E788681F59;
	Tue, 30 May 2023 22:44:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E788681F59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 831FB1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 579024148A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 579024148A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cEO3bgczQiRn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 22:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13EB241299
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13EB241299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:44:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="334685558"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="334685558"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:44:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="1036779606"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="1036779606"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 30 May 2023 15:44:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 15:44:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 15:44:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 15:44:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 15:44:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jufvWHt/qecdR+GxDdVqNHzJHWFVUDgv06fPVAP4zEZYb8/XVZFt8FKoegTGjtEnbe6jNnIa4tYUjVyknrCCocGs/sDRsfIVPPtGrfnT16ynkfxatHV6LaUQK7fSP+z7a3iEkwKUztjvnUO/Xp0vmERLgoY4bzK8wfYxAhwIA4/IJcLOshbKFKQYMBLPLrtNRleD8tJaot92QXCMD73hgfl4KjtaCCJ8wJG1FOKkqmtp2G/FlPU6VKSBYxgMByox/k7gfL5Snt8izSkeKXGpQiYPz8Iwf1FLUcuND9irj2mouH/ZtAc+h5OOflKVgCmPn8f/ZhFsYxxDdGU7ulGDQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rWy593DRpBHmTvnToMWqV20uWFqeCevjbHj2+gBMQw8=;
 b=gRIiM0DPpE3BxAMlpJWj7BRHfwUlDtd1U20jEDkSLtq71m3Q5rsIj3jEZMnrzblQS7gAfgE3e2oGcnJ8vh/xGbBiDNjzYR45OT1hv2h0feM5qGT5VNrUuyKbUWgRu7jSZx6U/y8SThBkFD9ytJGekp04UEG/ITa3oPhY++cp4or0RAGXEK+GjBB8w7zR3BO6ZDRXjQ+V/UEBU7R9jOc95xSFWCWNIXZ/eLhHNzyqAZvuVKj+Xe2/aIRj2O2Ooazn5dZSE8ugWoIpXaYtLbx4uwcDRBF6cCI744FcQUECPTxyzxsaSbtlUb3ZmB7i80s3gZ9dm8EHhCEvQHjBSEPI7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DS7PR11MB6040.namprd11.prod.outlook.com (2603:10b6:8:77::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.23; Tue, 30 May 2023 22:44:25 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8%4]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 22:44:25 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 04/15] idpf: add core init
 and interrupt request
Thread-Index: AQHZjQ1SPiNiwBjAO0WxI6rqIzUfe69zdjlg
Date: Tue, 30 May 2023 22:44:25 +0000
Message-ID: <MW4PR11MB59112CEB36BD33A6CDBEE95BBA4B9@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20230523002252.26124-1-pavan.kumar.linga@intel.com>
 <20230523002252.26124-5-pavan.kumar.linga@intel.com>
In-Reply-To: <20230523002252.26124-5-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DS7PR11MB6040:EE_
x-ms-office365-filtering-correlation-id: 9450008f-9802-4d34-007c-08db615f6b7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CFYmdWehCEGXM4HetIREGmtrERIs5GmC9/GkeTmIzoIm5GuNuRkCs3uMZ8psz14hN+eXHVkm6eaPIPthzZWb2jCo87SMCu2VVBd6pXTK7mLYJNswHmtmDc9E+Oo8anGgEcYlpSo3pb8fZ+yA6DM5j1/SvbdFB9IIPV+fHSyBP398BJNnHDDl4pqAg8DPEMB6yiiE27RPhC1IfLCsScHhD6g+zwmw1e9aOm7uNuUbgF3psInIy8f33I7tNFTlCOgIf79QU/KSmTSrZ+1rAu27B2Fl2QH+4FyjKJZeOMLtTPmjjsI3Oqvqr+BHenqSvZbVJEDqQF0z09XUzA/KHyKbI0YgLtnMYWSwEmzgaCnBW5DW9jatTEdahEplxrC5+4+SVC/gi21H//eCYBBFZW18BvGWBeA7sps09IIXz4lF2wuprNrcY4X5iK6pC4oZtxGjFkXHdwJqMftrXxvrN1PqCqTbeloB44zGoIjiSZe0DJLtky+82mtH945WZ4T3pAgPu+3v7klUOCyhMq++I6VOcpnisEP3YU1KYcK5UKNvEE068/5WK0C2jx3snuYdURdxLGlv+ffimrRAHIEcpqifXHp3TUQfT0tRDsnznweMV+HMdSyBZPbPP/m7DYlNcwaa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(396003)(366004)(136003)(451199021)(9686003)(2906002)(53546011)(186003)(6506007)(54906003)(110136005)(26005)(478600001)(83380400001)(122000001)(7696005)(82960400001)(38100700002)(8676002)(8936002)(41300700001)(55016003)(316002)(66556008)(66946007)(66446008)(66476007)(76116006)(64756008)(5660300002)(86362001)(33656002)(71200400001)(38070700005)(7416002)(52536014)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?s9yjTCOXtMpudd+PUWbDO8EJcchv2kqWgnHfB/hGCLlhTCpAlui7On6Z+0LW?=
 =?us-ascii?Q?9pvRP9V4cVaIcC+IxQ70hkUyb8qXKouJW+D2IezZbvpvKD7hYDYBXD7vC1ct?=
 =?us-ascii?Q?9stwLCTyP02bNI7MrfoCsaRXV/H1eDRHzjjPM1bkF4eiFw7BQoZLzdBZcOIN?=
 =?us-ascii?Q?PkAwVKuGA9lt6KFc242OxIbWTulkLsaS33N/9M/ZgdggRe+don/3/Dcv32F3?=
 =?us-ascii?Q?aA/5OJcDpzArZ4z8zUbPIx1VV7IRnkZg5XOxf+PdTGEGDLXtkSn8uLfzB1Mz?=
 =?us-ascii?Q?42/1voE0Efe9Hqr1bN91/j6EJZkVguSWJ3VLP9zRtV397WvgxFlPKNQP9ILA?=
 =?us-ascii?Q?Z5XnstxLUBjsY1DMvNz4fCRFvSiY0ycQ8AehEjip0fHaLQBLZ+Jnxeu5xQWl?=
 =?us-ascii?Q?64vD+WRV4put/0xN2xGRX62SCeBW+p5oSef0NoN/EDNivv1ILcyAsM9nR7J3?=
 =?us-ascii?Q?PVKA+/Bg/DEQKjMXkVjVGjtRkVveqexjI6+Dw9VXQCWm/ogF3fISW649cfE0?=
 =?us-ascii?Q?XL7+oSoSmlJ3mMiLaEElfhO0gDtUd4GoyWMQ2UfLpTVyK2uUXB1U/kj8AUnM?=
 =?us-ascii?Q?W5sf6CKDM7/LwdDXkoabc1EAvct7Buk+2lEjUIBa9Jb5egNthZwZy3nJf+ao?=
 =?us-ascii?Q?As9378DWoHTOL5zRGIOdpUH6iPfTsTeT6qYt5xvF2XRhJODaPjsxgPfJfhrK?=
 =?us-ascii?Q?sv8YND7wSXt+yb5JeCZPsLdQoa4ubzBNLCV8MowiRnxhSjH4gcbgGEY+HrnO?=
 =?us-ascii?Q?BprJyPpaJqpq4MB329Ahu3TyHnVjHVIkq2MlClIrEl2L5rZhKG6e0ahdWfAF?=
 =?us-ascii?Q?OkdqwoFWVMBfAs6WhvKrJPadW6U1naiLj5tlhk+SyzoR45AvC8fCAKEavSJQ?=
 =?us-ascii?Q?zJr8KmYK0saT33hg9jlyHN66qMb9IG3sGg/45KxmSQZ8T/YGhUGyo3vx0o+f?=
 =?us-ascii?Q?CP4xPvAxjJmnNjUXgVC3sKQgtovFAYN6eq7glpFTIs+s1ngLFPugiMbVPEVl?=
 =?us-ascii?Q?Ek5yYoYucFRvXmGMIHJfJBylUFPJashaV21vz+/TO9mjOW9aUo2z7irSdEvU?=
 =?us-ascii?Q?G+ThqYbKaRKqiNBm4oiQb+BAOj3qrS3qVazk9o9Jp/m/CYHdWmuzdrzhQX38?=
 =?us-ascii?Q?5iS6i7/MrAzTvpjzIpVQ0IyY/RYwx1m2FvasfvfPCKRO8Bof/rLuniESGTmN?=
 =?us-ascii?Q?GR2s86M2Ka/5me4Q29425F1en/UgkXvDvRifSO9/LA7GnBCcnGQ8QL+GZ2ax?=
 =?us-ascii?Q?m/NzrkBGaM85aZ3W0kyrm4Y+ZHVlH8ysoN/KR09IdptEpMSsOar2hS0qzRXB?=
 =?us-ascii?Q?p7iNXABtN7juoj45vxVQPEjynqI1/XQmtLxBTLiQu7iyft7Dvg4q8t4tTO8Q?=
 =?us-ascii?Q?DiNYbJcgqGHy2RRbMUW6KDFDg9s4InwrnS/5t9jkos725KQ6X81olq9LYEhL?=
 =?us-ascii?Q?IZAmEqG5FiZWTXT3R5syU7TwjIln5A/Qok4QJ0l+xX7SrBy0ozHn8UDNx5ji?=
 =?us-ascii?Q?OoJFN8CYtDnqKBZELbCl1kixD6421ZR97st+C0MURQs2xM+YSEOUkIjKF6A4?=
 =?us-ascii?Q?rkfM4M/Mm6BTzCX7MrgNGiipwPGFlteqQoks4T1acz9jniR+5fUKwoV+RvrY?=
 =?us-ascii?Q?KQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9450008f-9802-4d34-007c-08db615f6b7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 22:44:25.5736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZMz3KDgnEAhZGEVqnECa0vE7//KRMQdWtVNZSE860p+wGoMSTqVs4xN27aU1XiV3MZY6D/LOknbyp2ypeBf2uQBfrRQG9zpA17N2bgdOxgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6040
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685486670; x=1717022670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sXcdInALZG1Gc/eJcDBwEBgDS8/UOZc4ng2PM4yWUPI=;
 b=N9tenS6+jUjJTSnUz4uJARLdYx0mnBAD+ISiMVFXKWM+kzCZXJUGuVQB
 En5U0DOvcem/m2SfFUADlyxgUoEibUsRCdutc2AWPHVEtaZtMDjxsz4a2
 gm/RmiTN1t+DshXiJ6TChHWtdZ3UKdArA1cTrEdFAfOVa8VZaUfbtrGDb
 Ss48sB8Dq4FDpInTxtxCXWBWAMmkbtgPYGk1qQZG6axhFrHVwnMT3Hrpa
 DQ6RzfJymEpuJk/2DvjV578kMyTI2hD4A2TIqAuRznQO84b5k9o7I+dAB
 FnFanietfk3u7N9lXjDznWatjBlhXY7mbf1/R8joSo2v5JMJWBDO+FXNp
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N9tenS6+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 04/15] idpf: add core init
 and interrupt request
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
Cc: "willemb@google.com" <willemb@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "Bhatnagar,
 Shailendra" <shailendra.bhatnagar@intel.com>,
 "leon@kernel.org" <leon@kernel.org>, "mst@redhat.com" <mst@redhat.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "decot@google.com" <decot@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "shannon.nelson@amd.com" <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Monday, May 22, 2023 5:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: mst@redhat.com; simon.horman@corigine.com;
> edumazet@google.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; decot@google.com; leon@kernel.org;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; kuba@kernel.org;
> pabeni@redhat.com; willemb@google.com; Bhatnagar, Shailendra
> <shailendra.bhatnagar@intel.com>; netdev@vger.kernel.org;
> stephen@networkplumber.org; Burra, Phani R <phani.r.burra@intel.com>;
> davem@davemloft.net; shannon.nelson@amd.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 04/15] idpf: add core init and
> interrupt request
> 
> As the mailbox is setup, add the necessary send and receive
> mailbox message framework to support the virtchnl communication
> between the driver and device Control Plane (CP).
> 
> Add the core initialization. To start with, driver confirms the
> virtchnl version with the CP. Once that is done, it requests
> and gets the required capabilities and resources needed such as
> max vectors, queues etc.
> 
> Based on the vector information received in 'VIRTCHNL2_OP_GET_CAPS',
> request the stack to allocate the required vectors. Finally add
> the interrupt handling mechanism for the mailbox queue and enable
> the interrupt.
> 
> Note: Checkpatch issues a warning about IDPF_FOREACH_VPORT_VC_STATE
> and
> IDPF_GEN_STRING being complex macros and should be enclosed in
> parentheses
> but it's not the case. They are never used as a statement and instead only
> used to define the enum and array.
> 
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        | 138 ++-
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  17 +
>  .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  43 +
>  .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  38 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 347 +++++++-
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  16 +
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  26 +
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  22 +-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 807 ++++++++++++++++++
>  9 files changed, 1451 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.h
> 

Tested-by: Krishneil Singh  <krishneil.k.singh@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
