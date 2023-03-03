Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A596A944C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 10:40:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DFDD60BB2;
	Fri,  3 Mar 2023 09:40:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DFDD60BB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677836401;
	bh=zJ3yVBMZRKDgC+3AhA2q1pNmq6ld6v2kkosRnA6Q/eI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DfsQKEyXIbmoxFlPKwU3LbswoEfEmLOL+v+TIeiJbjkiKqMovT0y3khHcm3GWHfpe
	 EA21PAcP2tsxPJoMe120iMjYHzPSKFOwgJTdlehQqq6pUB0tcJ9aDK6ylsL++ip57K
	 WCWIDbv9Bw1uYZt/k5v9M9j70Zoa/iuwihQgaiB7mzcRfWZ4rk9Sk6J4foGFc+kwYt
	 2+6XPbyYWxsA3smr2E2mMXfvmkJicdpTY6VeGIzzwueicJrI+Os6XKZtSRiHOv6hP5
	 pq9cLLB+6gRtwNtwrIrINJjcTNGQJzTtcsY6ifUHCu/mARrfJCLxGr3gcnjaEknnR/
	 2NLjzDjADlp2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B73UxEHDwJGG; Fri,  3 Mar 2023 09:40:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5E26605AC;
	Fri,  3 Mar 2023 09:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5E26605AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B72D41BF354
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 09:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D0C7605AC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 09:39:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D0C7605AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c-7bmvzTkHh0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 09:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CA0C60593
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8CA0C60593
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 09:39:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="397595955"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400"; d="scan'208";a="397595955"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 01:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="764351773"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400"; d="scan'208";a="764351773"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Mar 2023 01:39:52 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 01:39:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 01:39:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 3 Mar 2023 01:39:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 3 Mar 2023 01:39:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GLGyr6KQyTRK3PHh3KDaN/hvky7IylgJfy7F1cHtHc4su8g1bmsW5Q8lGLs1cKXn9RBuJ3WI4Lv+omJcjTlM/EiXHD8Qy1Em4holDa+YXjQ+VTufzD5/vAEcnq0xE1Fb9dN13tNznay3cKGnm+NHG4VGzke/4no35/WQ/rHFE15nyjK3KpMILoTDYLBGFe9gwMGEGd6tdSe0QuFJ1qmheUQciyf49KcIJVUM3lTvrGAg3c5q1JnjD5Gwq2csDkB8WaJNMwJ45MrVwcN2biHKYYQIT6MrY8mxo2ke1AI6EkiIsqh0219y0iXjvz/NpsRzMFdzpoOvv3RT4tGRBeRGoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uIjMeQjy0tncmAM+ak9BSwQ0v3ODkRYETC+QlzURH10=;
 b=me05eJzuy8k9wFXVCHbcyvP1hPASj5kdwHNkXQdY6g0S3lqKi4z+C8jBXfBZGoL6b8lewHjHyvGb+hQcSHJcoKeH8Aux6DyOfEdp7bIjXc3cZYltDbpEwq0dCQdz7ne+voqyHc1wThej8AbwMJCjN6qGoPWPuBUXXjm42u+BwaSPnLGv+ML6ZJuQsED/Vw5KE4xR5hLMYXdy/tj/b/Fs/kTp8oqlrTszb6ib/qycnFnr/MnpkMGNblMXPPErWec4MUifMLgjl8SYnYHTu93z/tgkFkWhqt0noPi4Yxv86Vw+ov0ltj7fbvmaxAapT6WdOK3Fl6hzYFdYuSQX93tI4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.19; Fri, 3 Mar
 2023 09:39:49 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%8]) with mapi id 15.20.6156.019; Fri, 3 Mar 2023
 09:39:49 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6] i40e: Add ability to
 change VFs default MAC address
Thread-Index: AQHZQUHD6R5B6DNIs0mF1wiycyS4Pa7o5WAA
Date: Fri, 3 Mar 2023 09:39:48 +0000
Message-ID: <CY8PR11MB7364351B9582AB11135B4316E6B39@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230215133323.454054-1-jan.sokolowski@intel.com>
In-Reply-To: <20230215133323.454054-1-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CY8PR11MB6817:EE_
x-ms-office365-filtering-correlation-id: 97793d36-007a-4fa3-4cfe-08db1bcb3b1e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mNjXxEqerjowNlKRMBWee4Ktgzj2PvClfGyiwbZAEOiV7pZY7Rs0G4RRztA8iaBmtrSVMCPJgDMuqfFQourJD9SB0klNRkq24ayaLJR1468WqCDzakw0WrZTWsH09hFQheHGOyOT7d2xUEjOipHb/4hRAuapbRQjHhTPpSzU7jzvMy3JuKHBpGkd4RO+rmn+fzZh8KZcX2mAIYLC6XI/ezuIU/8AQuJzWJV5iHAqykCCAzPiaRAoCtUKaV/UzTxKI8cJHfBjThbQ5zIbgTH94cG1b2WxN3QXeZhwBZvkJ5w18aQYMoJOS/hWAnXeM7wpfuhMFHL8XSyC8723Ok732mNhjldiBKkpKfOqPGnVm3tz4bpI1lcM478jeqkDLQpbwUx+TVLnKkczc9H3Bsu2e+asoqd49Ak9Z4RSPT07GYFsmh54VWcMz3zzagjVTsPkulQpL24+tw51dJDAPC2k0BHMfj8S1kdyrRGJ90I29G7tgnANZJy0r4nc4MvvRjPCTcCmLMV9ThyvkDRLh4T+zQXz4vlwX6X6wsicpYfGlrY9jRY8Tw0yAF+4QmOTKYBEjVHXL+y/u64klG390NfZAeChete8xwN52phkWyNV1/41rOrgZmuqeqS12oSh4PP8LduDE36SKuoK0mTw9rglxK2J/FeAOegtr3n0h4l4w9cHIaD2x/YoyP0NDcgUy2NEqHTHv0FDwxUsTlokdUmplA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(396003)(366004)(39860400002)(346002)(451199018)(122000001)(83380400001)(38100700002)(8936002)(71200400001)(52536014)(82960400001)(478600001)(5660300002)(86362001)(55016003)(38070700005)(33656002)(186003)(26005)(9686003)(53546011)(6506007)(66446008)(64756008)(66476007)(66556008)(6916009)(76116006)(2906002)(316002)(7696005)(66946007)(8676002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?J0R+Zu127lQZhPTVlddaMLtMG/P8A1mJYdg5iIhrETHQkh5fe2RKmL1NHZ?=
 =?iso-8859-2?Q?DfGOWq539RJBctIcOTKf84dULMFOXiGOV7wfzxhCX9D7o+U+z9/fUlI+Iq?=
 =?iso-8859-2?Q?gX9lBiE7sl8gqQ4MlKpWSrmqNxRBoWJrEv/FRNj9EmMuBQsxuPm37//rBw?=
 =?iso-8859-2?Q?1tt9g3GiHzswceCD6LLKqcs+whN5MOdbQ1KCDhseApFdthht/QAGs+Tc7m?=
 =?iso-8859-2?Q?BqbVrX8ygUn0vRG1E4wF2W2g08WUK0tDsA/Id57JdQtu5N8Ldht1BJeO3T?=
 =?iso-8859-2?Q?8vf7+cUA5Gu7VObo2vvSkEU3K7NXO57OTlWXTaXGa8sPVxucIhOGXPgY+Y?=
 =?iso-8859-2?Q?KrHJpagRz/UwPsNsHcilFdvLh3U+TuaMiqemDK/12mccFUEcMsTgQ2me0N?=
 =?iso-8859-2?Q?khVdEGzSzacRPLp3l+dSUf7Aq9NZUx5DoX9lI92sM9SQlACExxQU+diWYf?=
 =?iso-8859-2?Q?yv4HtwYOQ7nhgSwmKbALnDFr/wUTkncoCzJoPV63iWamIFpVrs1V3ZBU+1?=
 =?iso-8859-2?Q?kHOSa48pnu8o8wiYQ5OnSv3UQcUekm9HNuLWEO0IceMzrgsfJqCUET2bzb?=
 =?iso-8859-2?Q?RWax58Z7IRZltqPR1ddMYSwKtPgVU9VXTmTE2El7L2NmX/KbgLvbZl0g5n?=
 =?iso-8859-2?Q?NNwAj7B7Xd2QDiU8S76hOBhR6Wf90XKYjrINskbBS6J3CTktoOaiyIxxNg?=
 =?iso-8859-2?Q?ek0Jb9h0vRKyde5jCmtmoAfkFCVPBUzvrxnLOaoGrdQyagpQ0M574JwaNG?=
 =?iso-8859-2?Q?bvk2A7LblA+7C2vXuvszfF67EfbZkraNTNVahqpveNLBtgz+pjQf91t4nE?=
 =?iso-8859-2?Q?9PKqCqKgt1j8O09Uaz/BJ/q1WUrJDQn9D0QdW0cUxLG2ZJJjAZ9Ia5r0oa?=
 =?iso-8859-2?Q?/EiStMx/G7aFeo8AG+kNQoGKQol59xMFOlwSvR9c0X3zEPZ8PexzQ7B34m?=
 =?iso-8859-2?Q?Nbj+e9IoYYr20X/gVEGI/t2X7HLq0sHzDTHGdw8F2yyo04Of9Xa5Cy0cBD?=
 =?iso-8859-2?Q?5kJn9IkdT5ugDSiv7odx2F4f3rtM4GJIobCWGj5iM+EDunVrt47vA70H8e?=
 =?iso-8859-2?Q?u/z6WQcsNsI9nc+w9PSw6ukZJs3bcQ2uboC1G1WInPRpK5zoX8HlK4HF2w?=
 =?iso-8859-2?Q?C394BXaVFqwHsy35VmqFCd3X+jIuHmQPLIOnAh9fc5vZLgj14Hw/5eFV6z?=
 =?iso-8859-2?Q?K75BuMPBdXDFXYE9uEmbA6HryCRWl6e88JCDC/wWLo3fmroEH58G8VzC3I?=
 =?iso-8859-2?Q?Z3oFFs2PkAj1ooDB2m4YiB50Een0yiADH0nP/oFy4tOwbuTWugz7Q6bjCk?=
 =?iso-8859-2?Q?W1SIM78SsaAWYBX61fm/4xf5lHFVwiZBWBi+khhTWu8XP0GpCwlocMVDYt?=
 =?iso-8859-2?Q?vBHO1RgEQtp89fG52eljLZWzrWMDaZuvvy1M5pqDJ8YZObqq/ANwa1AjuF?=
 =?iso-8859-2?Q?HdCMm1xHu1mCRYua67VeY469F1zrEviRcmnkljyGt8c2PE7f5YUPl4juuW?=
 =?iso-8859-2?Q?+aHe3+qaMsm3eY0RoDJj7Lpkj3wGD1vYgCcDDWV0RdfmwAr/a6TaLXsFWc?=
 =?iso-8859-2?Q?1vxyV+PHah6GuMabdKMtj7NtqgpzB0uEANrfNMKwRAULGvme220ysMdaNF?=
 =?iso-8859-2?Q?Rchj47BBGJdbQuZloaKNvDNqq/xyKXRM3+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97793d36-007a-4fa3-4cfe-08db1bcb3b1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2023 09:39:48.6584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9mkb4t7bFZufX4Pf96sdOaKAn/QG17gnvlCb8zfkWEkTi0qDuJGVKksOui6kpqhBs5MxUCt7aifYr8GXWcXsxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677836393; x=1709372393;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hHYqLSwJbsxLhV9DBFEvQvFC0f7jXEN82SdFK11jZMg=;
 b=DblXDKgXtl63L/QP4gOfrDYumk8orBqRl/u3E9qozv3mTyLzI7kcjW/x
 WNsoNxt1k7H/lQpY6fMViVbMP3f4h5/DwlvXlmyJzsazwXKelOdp7VFVO
 bTxBOwH6RBDOev9TdM9yMAu4VrK5B+bzJBA205MZlhIzjoCRhnR/sS2Zd
 GRdtL6r9b/nKnpM/+AqEEO2fekHk4TiExwgdytjwXtzLftY3ySkg5hg+3
 NbabfPB9qe3eV+X6iPFUM9mc1+NOF4opSNkK2RCCOp0gXGubOPCTsEbFt
 kupYbBbbRyNayFjXoGeGykL4mWjw3WqjJFjtE8Wf3d//SX0Cg0tvZQz2K
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DblXDKgX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6] i40e: Add ability to
 change VFs default MAC address
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jan Sokolowski
> Sent: =B6roda, 15 lutego 2023 14:33
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>; Maziarz, Kamil
> <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v6] i40e: Add ability to chang=
e VFs
> default MAC address
> =

> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> =

> Currently there is no way for a VF driver to specify if it wants to chang=
e it's
> hardware address. Although new bits were added to virtchnl.h in struct
> virtchnl_ether_addr to allow the VF to correctly communicate this
> information, legacy VF drivers that don't support the new virtchnl.h bits=
 still
> need to be supported.
> This patch makes a best effort attempt at saving the VF's primary/device
> address in the legacy case and depends on the
> VIRTCHNL_ETHER_ADDR_PRIMARY type for the new case.
> =

> Legacy case - If a unicast MAC is being added and the default_lan_addr.ad=
dr
> is empty, then populate it, otherwise save and timestamp itin case it is
> followed by a delete request.
> This assumes that the address is the VF's hardware address.
> If unicast MAC is being deleted, then mark the time it happened, if the l=
egacy
> umac was not expired, and copy as last MAC addr on the filter list, and i=
f it
> matches default_lan_addr.addr, mark that as deleted unimac addr.
> =

> This is done because we cannot guarantee the order of
> VIRTCHNL_OP_ADD_ETH_ADDR and VIRTCHNL_OP_DEL_ETH_ADDR.
> =

> New case - If a unicast MAC is being added and it's specified as
> VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
> default_lan_addr.addr. If a unicast MAC is being deleted and it's type is
> specified as VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the
> hw_lan_addr.addr.
> =

> Untrusted VFs - Only allow above legacy/new changes to their hardware
> address if the PF has not set it administratively via iproute2.
> =

> Trusted VFs - Always allow above legacy/new changes to their hardware
> address even if the PF has administratively set it via iproute2.
> =

> In case of VF reset/reload, only MACs assigned from host must be preserve=
d.
> =

> Add a vm MAC list to filter MAC addresses to be restored after reset.
> =

> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Co-developed-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
> v2: previous version had been reported to not build under some kernel
> configuration.
> v3: fixed minor kerneldoc misspelling
> v4: Rebased to newest head. Fixed compilation errors due to some methods
> being defined in a wrong patch.
> v5: Squashed two patches into one, as they were too intertwined in
> functionality. Reworded commit msg to better match the patch
> v6: rebase to current head
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 318 +++++++++++++++---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  18 +
>  2 files changed, 286 insertions(+), 50 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 8a4587585acd..9f45628719aa 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
