Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6650C6890E5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Feb 2023 08:32:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB42541D4D;
	Fri,  3 Feb 2023 07:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB42541D4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675409542;
	bh=+GhZO9q04KuUxcGJ5mYfw2fyvbvxBifAReOpFY2fXuk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AegjT6uhKkKZvz0scZbMSvis0zqngze3AmHu2/iLKFReBj3njXe4ctq6LaDlVT7t6
	 +3z6MxuUC0MyFhqtMuefP/gTk9p1MDgDAI3uOJvcanewVgPsLWqqXfZrx1uws00M1x
	 qMcZgyj5TPYdjsFCOOJ3J+sH78VWVVfGFracqjW6XfXW0Vu3P+EAX02FEUYNG442Zj
	 MK0RTrXOqG6DsB3RtfN00G/TObl5zIluPoMlQwDRmkz1Vvx04RRbJezJ18YnyJc0GH
	 UwacrjKJZO6T51LMnaRf0dnneRvqs0AFwqzUGwWx0ewZGq3Wae9zgYOHimJ6Ekwk4i
	 wcp10iGorgB4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HGI5WyYLfv61; Fri,  3 Feb 2023 07:32:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B8F741C2C;
	Fri,  3 Feb 2023 07:32:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B8F741C2C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AED5D1BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F99E41C2C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F99E41C2C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ue5-URDx34DM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 07:32:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95F6641BB0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95F6641BB0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:32:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="356023880"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="356023880"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 23:31:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="643173579"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="643173579"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 02 Feb 2023 23:31:20 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:31:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 23:31:19 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 23:31:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n1kJnzpxW2zb4kzOpZvmypRLvWIkFJgqTDniPjzin4x5EvRQUmhLg+0unNTK6xFxpkk7nwlv/nWwGp4KYxsklaOrOzrcdK78ZqBlkf+gVH74LSSSBbYb2ZcpGQqDuOgPpoDQuhAHTqWwEl5QYpgd7xkWkbsvZDR7EKHdlaA4VqAkh8CzBuAW3zSpQFqq0JdFgN0KNBhWd8zser+2+QK262Ui0irjizu/wZRtLHsca0LO5EOx3zv1vJA19NsJ+4tBV+zuqMA5lFVNIpaJqhGvGvJZ5GQNcNe5pr0tffPPsXsL7hmiYKT9PzQQh5UnyIv1N5oSdn53KrS/u0BtQh9wsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5KyT/EhMf1i4uRPgPW7x1m3AlnLaTh8V9AaGQL7ru+E=;
 b=dA06s0qSX/uNgMxsdLwGy5c80+o9Vd1Hb6X6+ruAoUjO4UuqAzu4lI+V4a7QZflG8BdvJF1RzU5/EFhRszVExiiMCl2jhRbVjneXDfCBHTEnZ0TM8uWO45TH8LQh4omW5TIi6lMde1g21AlVX+4ae4QMNKxoKh0mZDa+KKQtMfk2oHQg9idEnGGiCpyeTz1vE7iYpRzSADnxMjRZtBxgImX9bT9lwUOudsm9WzBcZ+m3z3MmjQSBHIiAALFux1HJoSNAdUQwnHbxGYVt1FiqS/owuP2AxCzl4KqIx75Cwvt3TnTlzRqMoFeoDzbb5xxYIZcu6V+qW0dasvKWASUw7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Fri, 3 Feb
 2023 07:31:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.038; Fri, 3 Feb 2023
 07:31:18 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 1/5] i40e: Remove unused
 i40e status codes
Thread-Index: AQHZJDPnMMMBVODX00uP5NPWvZrJpa68+nQw
Date: Fri, 3 Feb 2023 07:31:17 +0000
Message-ID: <BYAPR11MB3367D058DFF5DF24563C68D2FCD79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230109141120.3197817-1-jan.sokolowski@intel.com>
 <20230109141120.3197817-2-jan.sokolowski@intel.com>
In-Reply-To: <20230109141120.3197817-2-jan.sokolowski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|BL3PR11MB6532:EE_
x-ms-office365-filtering-correlation-id: bf178a35-6d54-4f25-72c4-08db05b8a376
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a0vA304D/qiA+QEsZXz4ZG2hFqghZ1q0oFzqVq32VuPHw/hBXsMC+/Cz0KNV06B3Ng9BqglyDFB/oiwgP+GoFr/sjxt+FOVhP5E7EX7JUX3QIMGMJJYPgjFHGGhBvhqr02vY6NSQcHT7YBByb8vmBtP1lhCY4ghPhw+2nWaln/myCXeLe+lGD7rzkYaGY/rnvzoEl4TwHd0Nqa0aHbmCaAERWz/be6uR66oincZ2XE+S6trBF3qJ/9lqyIm3P7+1YINSby3gVYb2MjgRa9J5sZcvhZPNfdXRZ8zCC6QptwNW77BEjO1jv+2QwF8VwWAj/9bHDhhOGchBUxgQqkftPwO7jnRP1iG4F2jIgUT9UlXp/k4ZR+dlGH30FaDdBgD29y5ANO558yIvmdkeBoXl2K7+afvrKByiZGQKqSlbDbGthBuHaMSN1Dj0iuhhQCBOKUKR3lAcbjzPClTT9rdo7HgDHP5BsxU66H4AB42z+clR8/lzHOO2r3AZp1pwal4BWAXXU3xgVvZOmr0s2hTbjuQv0FZjhW8KWHdtVm0YMRp6kerWVk+B2z75LU6eI2tjb3EfWFRGTe0HYUpvoU9Ceedv8hYuWmVEVZSO5hCzEI3mHCqxa4RGOBt1x8WZPJ/TiZ0Owsenx48S/rC3wOaTNZzgbTsOCXTo3v+WLGywzsYhRSYYnOsUrXM84saUio5tA2OvbXFRQJeM+Ld+CPiHgw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(136003)(39860400002)(376002)(346002)(451199018)(4744005)(8936002)(110136005)(5660300002)(71200400001)(7696005)(52536014)(316002)(2906002)(41300700001)(8676002)(9686003)(66556008)(64756008)(66476007)(26005)(66946007)(478600001)(6506007)(53546011)(55236004)(186003)(83380400001)(66446008)(122000001)(38100700002)(38070700005)(76116006)(33656002)(55016003)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OpCCjeAQ+O1RtajsYR9dqWLrZBWZgO77WeSUz4byRQnoM8QUiG3ghE+bV2Nz?=
 =?us-ascii?Q?C1GCQNZjivQlRlS8BhyHfpnjO79BRKYtKj1Hv2AzXwBmOa6we4LQpT3knN60?=
 =?us-ascii?Q?ETFbISbxQSn5817dLnhNY0Cs75+P0yXyAWcfA4uVZj+czW+LNuzhuA7lanQe?=
 =?us-ascii?Q?9G40fC2puqipjYSww7iBqMfhXE1nzKLX+Gj4VR4h4JjtqF9ToSuDd65MfL5e?=
 =?us-ascii?Q?wcvtksDTmsU80JoYud4NtAKdm0aP345qoNAPMyjZ/xtWaBoxYVjCNuhctrdT?=
 =?us-ascii?Q?QoxCZAICCNtEziSxHMeomfQ28GPk9xq+7h++bgJ945MuYkWuetvowEcD8d2y?=
 =?us-ascii?Q?OH3I18nXnMjeZDmtw1iy65ud7W+U60yEUrHXP/UrScN5B5PvTSjldaItK2CX?=
 =?us-ascii?Q?kNatgJgZYnaQ8+wx2X/NGYXO2N0lKF/cFhCObSxL+eAy9/OoPvYs6b8JQtMk?=
 =?us-ascii?Q?veHz6y85ZjCTo7E3i010h6oAOdemDiOg4AqTxmoBZ7p0XEr4jGQcIOq6yIoV?=
 =?us-ascii?Q?L6dCR78XIztbwcOEwjxKMwjFVB8tZjfhf+UMqPJp5a6Ba5OTiaYzn5bzkJQ4?=
 =?us-ascii?Q?8U3sySpI+mGDaWy6FPQC8SV7IQsIFSRG5YP3AQLkHF9j+Y1IMdjBSSVhGeWn?=
 =?us-ascii?Q?bi7AgD9sDY3ncueUsxBnrMfBa4bTiJtAvrmJNDXzu+cL5DUPhL7DZgRtqAgF?=
 =?us-ascii?Q?LRhzAYEaK82MDKBGnCyhOR8FQXHJR/EuhPh47sIfs/LOLrFE7B6UhLsDhRNm?=
 =?us-ascii?Q?fdBJAdvf+Kw2G95omvaf+dwuSREBHOqKdAvuVb0+rbCOVZwN+MMypnmz9D2y?=
 =?us-ascii?Q?8PHJykxmMNk8KJKhkghSwASXHN4xBOlnywqvGCYifryR+IhY6/p6rVsZjqLa?=
 =?us-ascii?Q?gBC5sLAV54FVH6mpdnDK9KYlmUpp2U2K8XiwJ5+XvGdeedT21DimDNUuS/Sj?=
 =?us-ascii?Q?vlGVz5O6yUGZu9vnKeNboJgQ+ZEAhWYQ3J3vTDp3G/pjjLuimsB6B0kha8rs?=
 =?us-ascii?Q?yGzRQt4efjjNxgs8ISDeIogaKeaKMp9p4SqVmTYfxNcjcaVKhLsmq0ql2p2+?=
 =?us-ascii?Q?LByBSFTaiF+ahjNG4MKHVPsmZp8JaOP1CwXzd+dQqlzIb7pHUyFmFjRVNHbR?=
 =?us-ascii?Q?ykv+aYj1xutRMU6ERr7Cxk+Sg17Z2oxJ9VRmXqON865fKnSINHz2l0gk7+mT?=
 =?us-ascii?Q?ydskJfHZsd0dlm4nZf+P/KV2xu2r6h8sSNiEafFOzu8PHyvURli4dnSAhZqb?=
 =?us-ascii?Q?zI6ypIXwJX1weclro5UpR9aHRaUGzANWjQXSrlCvAIiSxMvyKpfUD7wXwiww?=
 =?us-ascii?Q?5VJjjXIWU0jSJ9fChZru4h4dEdLEQnQez1t+E4AthAzjniIR+VO0iNQOkmjD?=
 =?us-ascii?Q?54cA7lMh+FeIfY78XLCxemRzZYhAACZX9XFTbjGyz0i59/Vta9zp2ZbYhoI+?=
 =?us-ascii?Q?xmScXH4DHAh+7/GM2UXCKF2/2AyjLtqKpxmDnxdjISUPzCQQ9ZyXdSTOPiN8?=
 =?us-ascii?Q?aJTr8amJOmGrAbF4F3ehXzNMrBvRiFJkJmtgGzwnLZYg2uBDb7ZeWFnT7WE2?=
 =?us-ascii?Q?T5IIG4vlqqCZzpMcldMRK+jM+hOKx4RGczPEeRrI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf178a35-6d54-4f25-72c4-08db05b8a376
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 07:31:17.7158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uEpDmU/PI/Ngjl9qd0FMD93cTdDbwjIkce7i6L8LvUtrFS3LNgz5H7J0a/hE0rs2bwdTt+PobReg4ZcRrQNXjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6532
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675409534; x=1706945534;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JzQwuLgZesS2iiKYK+m62oA/1gHbZy8sYYnPV/bCeS0=;
 b=KXpPgqGWNUvXG8CX5jhsTob+qRaudTM9bX6TzVRKSCIHi8mftZIiB6U+
 ZZ9hZp/wmKzWyhmxl858Rs7dxYLnG3r8tz3D59ffAq/jrf5epONn9w8HS
 it8/BuLg2AJWbBwijA/vTp/9WR7x2+PsXJnnG2UAyx0pfKt2cGOlvZJmI
 t7OgvmeKAiCJ6cuNgQ71ISGPybHHWE9i/gwDqLt8wGK9V8LL4oePwQ0Tz
 XIQw5tPndFzItN6tiWXRKYbRlEYLoAzC76zTjYYCbrzKVYuDCq48+g1CK
 m8OhTpXIqJ/FbtNz6+QE0Sj3wlgQy81pUSiavEqweDG9tpvQNv9d/ILAJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KXpPgqGW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/5] i40e: Remove unused
 i40e status codes
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
> Jan Sokolowski
> Sent: Monday, January 9, 2023 7:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v5 1/5] i40e: Remove unused i40e
> status codes
> 
> In an effort to remove i40e status codes and replace them with standard
> kernel errornums, unused values of i40e_status_code were removed.
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 70 -------------------
> drivers/net/ethernet/intel/i40e/i40e_status.h | 35 ----------
>  2 files changed, 105 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
