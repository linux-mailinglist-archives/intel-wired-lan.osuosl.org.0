Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0A367C7A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 10:41:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3083481F58;
	Thu, 26 Jan 2023 09:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3083481F58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674726099;
	bh=viCWojGCtDhJUxm+PMWak/Z14dvntmGQGS+xfeQeCfk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G0t0H5YNJ9SnEe7YH06I15gLWMyzAhQYaClxGOwav21gBJef0qwTsJS5R55FYPmGz
	 VmLLtE36E/mjyIrOcBzQKgd3Rm2dzzv2BbwIu+QncAtqr6t5IqgnXQHCGCnBYSazHB
	 aWOpm/NeslGeIIbpzVCU3COOpGuHGADsd6bUHvZGSbJmnegtLEUMFc4boaTql+AcRb
	 RKfpTs54aW2gZfXlaLCdg8NHWAK/I8xZcGc5W6u1FxrzOy1jmwJA6Ef/HBKDFq+hTv
	 fP56vUiOPWT1swclBXVzJjSnUQ8Ewr2pGKDgcF4UIambiR9K/t5la8MCB54VnrsE98
	 XtctqR55nyJwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7nwiN5opxbC; Thu, 26 Jan 2023 09:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D15EF81F4D;
	Thu, 26 Jan 2023 09:41:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D15EF81F4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 198F51BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1F8E81F4D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1F8E81F4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VCSlD1HBiZMw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 09:41:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86B2181F28
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86B2181F28
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:41:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="389113888"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="389113888"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 01:41:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="656114257"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="656114257"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 26 Jan 2023 01:38:50 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 01:38:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 01:38:50 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 01:38:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JfndvSHlBvWBRRMYj5F9tCTKzHtgJNwgKeubpzKP5jJLRd1yY2vRRQHZNFAHnX42FoDM+8aczsVSuBkJu9zr8KyWhZ9izk3Psc/2oQcsUjIK85yErXmhO6QsjzCsC2QdnqQz6OI2kgEWmnSi6NI30ujsaoNYXMtgvJiFm//zubKZv+Nm7oQZLtG3lMuGO2ArXlyuZ/nv9S8TAbtsIuhrmciNsKejHvAbib+qY8ZvwKet8OiNTbPB26uTK9iNwR7WzyyWFBwOG9iyhEzB/yLUK1iQn1A859vfGvfQqiKSkrHZFhNM6roKGJk+nWxru8dauN7wA1ir5aY21kVmNBpF/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KFOUzm6x6pW2t2oOmQMXVXTNOoF3qQ+ebL5y0O2R31M=;
 b=T7+YhmrwCzaKJs+Qemu9T2wkn5sweks1f7hL0PMzfjju/OSidkb6iUKngJXcymSnmNk0DvnUCw95FuznyP6xt0rTrBB9tXvNs7iXhu/GGCpJpAi1X/+5l+IWAZTr5afkviPcc2pI2rrQa4qYaXP27iCORMYAQNzaSpt7aEjG6ZY+8b8AA4Nrh/4Pt6t6pWihQe8Bm9lrTKvko/MRUtIwN0snVEOThBRsTJTJfZ/pz54CtkIDlVAGOZLfxFYKbHd2w0kbdE+qtn+iqXmxWWs7fnRhuCyAzyY4ECnVjy9BBbN8xIU8igHJkvBaWCLwekqYskYlposDjPko0sBxmHM4fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by SJ0PR11MB4783.namprd11.prod.outlook.com (2603:10b6:a03:2af::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 09:38:48 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 09:38:47 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 09/13] ice: introduce
 ice_vf_init_host_cfg function
Thread-Index: AQHZK6Pj5oqpNSnj3kG2DeyXkfUgd66wfJvA
Date: Thu, 26 Jan 2023 09:38:47 +0000
Message-ID: <CY8PR11MB736410C6695EE0F1C99F7904E6CF9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-10-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-10-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|SJ0PR11MB4783:EE_
x-ms-office365-filtering-correlation-id: 7ec273ab-380e-459c-870a-08daff811fe2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5AqbLsqJiQo2rYPrG7TV4snErz/Ai+o2LE2hfebce6LZj8ZNXXGHEKV328chtu6wzWRkXHHHuiHahDqJ/cbyqj01Bl/3ro7wGlOIRe+9aS1ivITEoCgIhSPg6RypBENsSAq2y9O+XHvZOHq6Vj+oPhSCp+v9oe5dfmHO2zDmN4ZaNcVc9t71/Sj9/Ms2k9XTcyZ/Ef1v/hjkNlQtgUyDyIexlTmLvpCeprYnjFxDgAtq9PhgKY00CYQMs7ko9ow8IVKRVoOAu4wHXtafEPvpnduJU1smdSVcNb7vJ/xX+nd9taMhE95q7HwunG5izUNEcBA8GWT5pB3FTTp6QhfNNnlSNztVHXLLLSKItlyUE2bPlJqKEEqBO5Mxct1cNWzTvp8cBqud+kPGrcYitWfIYGdKgdRNlmfS0oSI2laQUnzVg+5yVkSEY4nq0yO/semoXERuw0Vko4qWCfaLqWMr2J2R7WN+cdqo10XwbxHol0bT9oIL3ICtr6Shk+vKOiO0C+1msjOET9UDIuqe3ECPVIiGsEnMK5ZG2xDS3tIsAitddMCYu1SX4+jnD71V+BJ95GIV8uPuDJ4Y3gPlh6NNU/0UGBtjPRyr+S5cSJED1xWewBALZ3i27z0xLqnkKwfu4UHjh61UUrXuzlQD5yB3BF8gvjlpIIVL6HmNjxdsOZx1uP5bFTzqtXfI2an+2JKK6w2dRMFqZmq/4VizWbG+Jg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(39860400002)(396003)(376002)(346002)(451199018)(8676002)(71200400001)(33656002)(7696005)(55016003)(38100700002)(82960400001)(38070700005)(83380400001)(122000001)(26005)(9686003)(186003)(86362001)(5660300002)(316002)(478600001)(6506007)(53546011)(52536014)(66946007)(6916009)(64756008)(66556008)(66476007)(41300700001)(8936002)(66446008)(2906002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DlSeXbQL/N8OGd70u3WguDoqQpkg1KX/5rxBhrEnXqM2m1tLs2D5SryfLheo?=
 =?us-ascii?Q?z34Ix2Wq6dqiXh9Pqju7wncN6oJ5E9qaP2+a4JqFTztEqIliiqDbJyRNyRK0?=
 =?us-ascii?Q?835qgz1goYg/db9VeuxfI0Yeh4TcakloP1KVEoSslBKo1kw2zPjPwyRdREVa?=
 =?us-ascii?Q?QxUv1As876MvFlwLPbMKWT0Oiw4cHeNrAevGRJ+Ut3zhY4L4wMQjTCoqO60m?=
 =?us-ascii?Q?pfPdXMeT3CkkMCuPwn+TD0iQQyll5jxHYpcqDhQBGbk2y+ozp8OFAG6QiCQV?=
 =?us-ascii?Q?ACu9HARVrCbV7dzPEmLWcG5eRPOF3iDOCI5l4gJriGzPcX3EnwPsW7k/f5pE?=
 =?us-ascii?Q?366FEp7Bup4RL2XkNcuDRhhcQTjGgEbfQmDbtifC5oyXPTITbFX38VELwEn4?=
 =?us-ascii?Q?dPJ4Uor94TCye8/7I/O+4Kh4Y8kYbJRPe6ynyOd6PcMNBKcDcscEMxW7I4Wk?=
 =?us-ascii?Q?hD8K6QgnflQljTuoPNRlDK9MyGe472OrH6ZfMBahDFbU3oqFSWqekJuDyg6m?=
 =?us-ascii?Q?CAmil38++JPCUp20vxf4fK4rDxBfztRHjA/GlOd76b6qGmAiHda0yIOVp7en?=
 =?us-ascii?Q?+o6VyiOEO9UdSzhEM7W+vb3KFCLngisJStrHPWmoNZDec3YTHUoeE+Eh2XTa?=
 =?us-ascii?Q?50hGbZNXuChF0daV7LnD3F9NEjoGhx9LFXPC0T4mB3SijDfhg0dIbLtc65Ep?=
 =?us-ascii?Q?aG+AQx0HheHnQcLNs1yIH9lbd7/2DU81tRc1QcygO/0fKXcHfB/gXboWdNis?=
 =?us-ascii?Q?g524lCpElPkx+3baSJ313O7mcLXOSMTpHD0qkDZ3VVEusIicXewaGqQ7H7wO?=
 =?us-ascii?Q?Skd73XNyMFzD4Dm7HKTFL2Xte0uGOqhvm5ECvmfDbl9gnKDnZyUyuliCXsAC?=
 =?us-ascii?Q?UG629ctl+YBjP+n/pHh2ft7wFi5SdHa1UwW9ujIcwetbtYWtnsQ5l5Ci/Dik?=
 =?us-ascii?Q?pj50e31FskTygkvN1DXPynsLSxqJiBBqilPWBLTjbcGVR4Hq+5lZKUSddor4?=
 =?us-ascii?Q?Mxu9q8YdWtVfWibZJ0MbxRqjNA+3o2vaIA1FjGKpKAKkpPAo8LHk3soxR6mA?=
 =?us-ascii?Q?WeGa+MKQc3uUgCfGoNz0+7YKkv4AztK3HFbloZIL88miV1I4pdiN0LaJR2zO?=
 =?us-ascii?Q?pZI4MfRHRRTkJbAiUPFzJV0UBGjQB7IYL+FZHp7Vo2MqUvH06RYUZ/qeu+de?=
 =?us-ascii?Q?w0PMtvAnRPj4poA6zcuNbwECvW1usF+BTtSjosn8dAlimI7UdLRP+gRahsVv?=
 =?us-ascii?Q?u7enm5U9lHg3ccXtn3gTZfYTTuOFM58gH1mxvDezzNCRdMAqE4TxyQbLLfa1?=
 =?us-ascii?Q?UOEQW6hJX8z18SUyzUMGvOLnTcYmoB13tEsChld1GgN4ZFuInxGM/PRPClqQ?=
 =?us-ascii?Q?93KLstszpvtFtU/ZkeZbBWr3aydXlAqPGqTkN19cFptEgm0VRqhqW+xIbrrL?=
 =?us-ascii?Q?xPlP/GA/1zCQGk491emIeJlMlP6VvWjLwKSiYa4IylX73IOGLWpetJjbBo4X?=
 =?us-ascii?Q?wMmoXFewGVb6sDPzaVgFWnVD7mcI3QsGhu//s5C9sRECrOGLnpOfgBrwKl4z?=
 =?us-ascii?Q?9/uowSNklmaNDKmAjjfssr4Zgh0yO+prj3Fk30/r?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ec273ab-380e-459c-870a-08daff811fe2
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2023 09:38:47.6993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hyKUm5eLlwEA7EbnzX3gQzL7rTP6BrDkeBn/UOj2TbW2DQzVv0qQWraK1y7oX2aOm1kesr8Gqh8+UVR24arp3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4783
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674726091; x=1706262091;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xS0/jgfKYz2svp5JjHhphmg1j/kU2Q6QruGS2gKJuR4=;
 b=Y5/75IglJeNOB6dSV09htMIXByNrjp40LLUjjvYiuJ6Ss2cSaCHhTu2f
 45DszUNyeZPC/WpHNPLhP6MDFsLSMhlWk1JfNLVbjXODlX489GGbUGakc
 QnEVEywAqg3le+za1kOQicJRnMPsdkM3CYHLB65hFOYuDQS7S7pHWSpzN
 zWGOPZlzHJqKDL7U59yHxVuJ09rzZAY+q1ThODTd+N4kDezg5zMaXpg+L
 I3Slmf7kXC1sYegkrkhNnOADTjRI0TG3PBFml1fPbiEHxuGfBNjgJ4W4B
 Z8KJlOCA1bDbXqTmc4HwSf0uZQ5rsl+ZVdFKgYsmKaXWMSOL+2u3VnzBO
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y5/75Igl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 09/13] ice: introduce
 ice_vf_init_host_cfg function
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
> Subject: [Intel-wired-lan] [PATCH net-next v2 09/13] ice: introduce
> ice_vf_init_host_cfg function
> 
> Introduce a new generic helper ice_vf_init_host_cfg which performs common
> host configuration initialization tasks that will need to be done for both Single
> Root IOV and the new Scalable IOV implementation.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1.
> 
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 36 +------------
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 54 +++++++++++++++++++
>  .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
>  3 files changed, 57 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 6c07f661d44c..5450fa122729 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
