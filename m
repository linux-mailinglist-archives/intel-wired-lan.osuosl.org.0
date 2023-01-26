Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 636DC67C789
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 10:37:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7305B418EB;
	Thu, 26 Jan 2023 09:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7305B418EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674725824;
	bh=26xxdPpw7rvl4iXLKg6PPKPUfw04tsHgCU542g7+fuc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7Y+NqCdR3wUafDrHTFOUm8zZ80z3XZANpWWGjaXhe9HKD8sVzW/0Ivi8gb1ElayPq
	 5eiqa83Mn/bQTxvVrAjWyCdTZk5jvSVaKVFQSbtUzj3F+jE8KhWORhB8bb39UHBNEK
	 3YGOu0bEoY+25yc+Fm2cYPecmm8GJCIE0im1O1GRKkoPYaZpDpJxZlo6CIz7P7IUhn
	 N9tGS2OC7vJDaS+/lO7SWvC/lUftVlDYyPSTH3vKs6Dq9HX3R1rU/+oHRHr4JvgHBN
	 R+h09FHs756z3pfbsZDTCNtZM2tui3Wnff0ghkGnzSifZaIpEHFECty5aWzZQUBj8T
	 7bnxn90i8zTeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d62qo5FHcWtP; Thu, 26 Jan 2023 09:37:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B4094091A;
	Thu, 26 Jan 2023 09:37:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B4094091A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 021AC1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:36:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD9BE4091A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:36:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD9BE4091A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYK9MTv8NQ_0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 09:36:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BABC440908
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BABC440908
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:36:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="310355892"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="310355892"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 01:36:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="805319088"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="805319088"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2023 01:36:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 01:36:55 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 01:36:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 01:36:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQU90lxvdH72wdaOIeULs4CoqJip0/7T48Pemx43TpBEyypwXZ19FdDKOpGD/h+ZoIhqPTnlYwNpx9SI1+LY0Bmf9UIjfjFXIiDTIIK583qEsnnyfTBTz1oeRGHVLKeuTYst/2f11v0sLvEkIHqd+LoVNEdm/h3RXJYK3K1g6quLibZLNhrNMTao/Uyq3IzTrFAv5/bdzb1xXyzNh4K/TqOGatFmcrTIMEX7uTEJa+DxGzNYRsFV1FWQ+Ed1ZkGuOOaKjd8cUYtVXVf7i3WnrhUeG7wanF73YMtus2J/Z3Hz+AHCG5/RMdnKT4rTP/VbcELZ18km65m2fa6lSy2GAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ie0Go+70avLvT3vYyX9tOhBD1/kvDh+f3SDNlAABMA0=;
 b=I+2q5EYDRMgDd56xbxEY376B8I2ll3DctQRjZRP2lhT9rGdyN/PeSNikvALmjfc9E91UAYeVAx4VB4hgtUQUlzeVZw+VBNSi3ak4Qtmtovjsz/EOA5H+X6JdBr3tHkV1uNP5z23fNVuwXNBgPNjdIoUoaQxn4aBO9r0F1Qyrb/RLTXUPjFOv47YbIoQ1CK2CkFKexLLxDCMPjCKb5WXXECCPf5uEX7XX0zo/WwF3pgFRI/BI9aa4p6QztUvua0kb5xgHpYFyGF9S1VYhe/dZh7v7yM6QrfkHMGmszN7Cu5Gj6rBS/NNLh2UczSRH1WN2YLDNYST0efzNEtlgSM1cSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM4PR11MB5470.namprd11.prod.outlook.com (2603:10b6:5:39c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 09:36:53 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 09:36:53 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 06/13] ice: move
 ice_vf_vsi_release into ice_vf_lib.c
Thread-Index: AQHZK6PX0Y3WUafhq0eqAmSPqsvmH66wfBAw
Date: Thu, 26 Jan 2023 09:36:53 +0000
Message-ID: <CY8PR11MB7364CB0CE29BEB0A6F341E28E6CF9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-7-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-7-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM4PR11MB5470:EE_
x-ms-office365-filtering-correlation-id: 8d54d024-1be5-4c3f-2dc7-08daff80dbef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ULLyyhYKhKXXtqy43fLJ78wyVXMTwNnr3ZpgHZlwdVlvefaCJQhq5/T71os+6TOMhPx3rZ1AoccgU49k+StlhQeUijeGixJtkUnYA7U4d9rJdWX/kcwUffUoa6l2YqeDwenuC7zubVBNh/04qUz7ubHLe8brhaeB/QCz6N5bfwqub1Q3yE5CoOH1Xd7lgaQdvfcKC37hfZKfh2+CKKdw+0c2lAsFT5P/xb/rm8bkj2fyrMTuMK1hzXSpusL/u11aPNppBDjxd8OGVUzfmqsT5ycoBHOvStegX2XtcmFHQAMWyZPyb9jFtmobvaBBP03LXGO46d5iwXIrxRLzMkkTwcYutSyfMxTqBJUmkvoNSrv9Q9Ho/gT19Nrn8kwXmVwaZD5Mm3ZRJMp0GX9gvAg6XX/mfvSeBdFL52a18FWODJGpWLimdmhxZjE9UaBEVRseBn9SBcn1PEXysqz+ni/W32W6sCrLZV651vKYB++qJNj2yFR8HEtMJv0cL+p2W9jH9UdnPOLA/sAruNM67CQvdpAcl0nl3HBB5WV1Uew4P+tVU+SXZ/CEU6JywgLf3xCY6lfHMPBQtcKL5RRUnaIXUlDt+F644dVRC0l8HxomTih2B2P3i2mwfTY6Z3v4PT0sC/iLOw/4G57fO5vJ8+yLqzNbt5xXHHoJY/M2bZFW1TJcJS9UMemc/PNWHYyoLLpBuW/F79JSSvgVr05z88dKmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199018)(316002)(38100700002)(122000001)(41300700001)(8676002)(6916009)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(5660300002)(33656002)(86362001)(8936002)(38070700005)(52536014)(55016003)(2906002)(82960400001)(53546011)(6506007)(26005)(9686003)(186003)(478600001)(7696005)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nFc8wiXL3rQDH+UZhpfBY3ZvgHjnVCbg2RwgggyhGWV1ZM0oh7J/am/zTDSb?=
 =?us-ascii?Q?n6fxk4yPkCCUCvwgUJ8DwY/vgvw/uIk4HoKvwej7Hp4Nrk2c/F8ucpvTcEXd?=
 =?us-ascii?Q?0b1R7fZjjPA1BZz1tsy0xTrw6dKq+fP/i7MXqo6zkqK03oORqEz4K9Ervh2E?=
 =?us-ascii?Q?vVVP431d3+vCRlpooMltVJL8mlyXmUiFcjl83/DNDpWl1byyaYgmJDus1glV?=
 =?us-ascii?Q?6z94Fn7Wc5rUNs7ufkvrv20qtFr1Y3OJ2ezDyVAUGb+SLl1bJXzZlk1rZIoM?=
 =?us-ascii?Q?Y/3lGpqLozx0y9b5wbD7yvLx3yXTI93mUNKIPecoq94Lx2uzn57Jc9mGWARU?=
 =?us-ascii?Q?pk/mJVcMvwNDEQpxgR2simoOy0yU0NA4hg/Bry3N5kkNEXjOXFqLvzWbXtDk?=
 =?us-ascii?Q?kKGPIDk+c79DKgwZOPeccDCAikCVHEQbid4KE/g7CmUcuiBpUfp5qY93bxzN?=
 =?us-ascii?Q?cUZkjQTaKq1jO2PoNQZNYzP4SeMrAmggieDxpBbA7IkXfRISdNZaoiwJEY+5?=
 =?us-ascii?Q?y342CB0HhEfZJqLSk+ulJ2ZwS6+iot9MS+mhJLNUKhDLxhdLzYxDwFSNStVB?=
 =?us-ascii?Q?MvM6MDPUvXxuabm8mH9bRlvo9LvJ3JSKwArESt5pCkHw76g/yl/1Ii/ftz9g?=
 =?us-ascii?Q?zTtchslmutC38mC2Bqa9Qg+ivOXp3CTc0LpSwe7RwIODr7FCCfGCreTeNoN3?=
 =?us-ascii?Q?7k6vc+EnVV5Xzh/AdGI4htKX0kPRE+OfeRhPdZMWRU9u3pzQFhOX0CTUnZ/n?=
 =?us-ascii?Q?IYu26K1WBv4NwZ4/8J4h7ytuoj9meywyxI3VK5yqnQjJq4MbsJWuJwtV7rDf?=
 =?us-ascii?Q?HcBVR5oZcrl+4Tt0izl71d/s85S7ZRtMBhYMnvqlphGegTtK16UbDEmcFwHl?=
 =?us-ascii?Q?kjQbGVLcZLC4wxWb6I0vgbARh8OGFX9g2gjt19hSgAIn2LIatLbf5TUQzJCz?=
 =?us-ascii?Q?LrN73ZZX2dznat2AQZitFzJatmu2v21w+umIsNxuGmkTiN0Pt+tubZ2gNkTl?=
 =?us-ascii?Q?dg4l2/ipz16QGt9U1as1BxzbQJxlGAPQ9UFKu4yTecY0dLfjzgMkDkU51rK7?=
 =?us-ascii?Q?gJKj1qRYiaR7e9kv3Tq7HcQn0CEgosmFewjyzaASl+aNNKh2GsKjgh1GLpV4?=
 =?us-ascii?Q?eURMOryC3QFSl2V36XtY3N06nwJs6B4Bi6W2yxRVDqPTEJSK8vgF5CCQX5N7?=
 =?us-ascii?Q?cx6/stAfA3oSANVXYyxN3ac2xfoEjBMoEiEXJ+RcEie1DTcGFsvXcQqAadKf?=
 =?us-ascii?Q?bspgNzff1z6/XQs1CPELdKF4tacLvDOxC6y4iVt2Q9JzqAk7piYyGkPjtEdq?=
 =?us-ascii?Q?LQi4a8/ObSdQ5ZAiIJoH5dEhXG0dqdP+khmsaNtd9qDmhWU4ut1QTda/lo6F?=
 =?us-ascii?Q?HWCm7QQ8LS7elPstuJA83BQR4spTBShpxXsP8wZXLWND6kvw6+69WTUV0LWA?=
 =?us-ascii?Q?C2Xe+Q04zKQqbSbIIqRy0CYWEYBk8J3aEbu0En2qPMNjgpPErbfCZ9Ey1sZl?=
 =?us-ascii?Q?PT9C32F+o1VQRDOIIvRHJw5VjFW3cx8zNCvQ+I/C06l870X3QZrxFq912Bld?=
 =?us-ascii?Q?PP9OkyfdspfToVee6r0OZCT1n2NufBt0y1ssEgMR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d54d024-1be5-4c3f-2dc7-08daff80dbef
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2023 09:36:53.6815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GWYfIws9sWGunYaX+aO/mjC270ZYLhvD0HStlN5JVDmPk9egL0sVZT1fAwXfCsE/87G1PagMcBpCiY31iIlaKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674725816; x=1706261816;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lFHDDIFdUBgiHYMdPBN0IM6/i+2NgFl7LLB5DjmH7qs=;
 b=mnMXLvu2z0YOihBrH+AiMOEIqJAsULK6ThMzlTREZns0rYAVgl4HtP12
 xRnZEcoYqoyYX7OjeKfeH9xrlkl+e29eVkN5tBwDuRQr5ZB9zS9uf0rhZ
 ZNyY2J/32R+NKviy7KHf0bB8946+qpPTdHOOyEkN6ow84pVujRXgByzIT
 emKllq9BV6ugoHtJyzC/Gls31rLu/7ZhjOD9Uq/IvBYsKyPzkAzn8YIYX
 N7GNAnIRBpU9V8164Immc2vnttypRCelwNunASivnYDlXuZ8TJEigENou
 WjXBF8+g0h42IaarGj+w3XCRTHBlOiJpvr6SCxq8r+LDrfo/oNVH5D7VO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mnMXLvu2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 06/13] ice: move
 ice_vf_vsi_release into ice_vf_lib.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: czwartek, 19 stycznia 2023 02:17
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 06/13] ice: move
> ice_vf_vsi_release into ice_vf_lib.c
> 
> The ice_vf_vsi_release function will be used in a future change to refactor the
> .vsi_rebuild function. Move this over to ice_vf_lib.c so that it can be used
> there.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1.
> 
>  drivers/net/ethernet/intel/ice/ice_sriov.c     | 15 ---------------
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c    | 18 ++++++++++++++++++
>  .../ethernet/intel/ice/ice_vf_lib_private.h    |  1 +
>  3 files changed, 19 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index a101768b1cc5..de20e50623d7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
