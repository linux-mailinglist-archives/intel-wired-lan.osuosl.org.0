Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC120868077
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 20:07:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E39460B0C;
	Mon, 26 Feb 2024 19:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rXoL09N1BBwa; Mon, 26 Feb 2024 19:07:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2F4460AF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708974442;
	bh=FpSq+/bqfQrUbh+lObPLHBbBQNHh88SJTpJzvD6eviY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qhd0H9LyWx3OaBQsoVtVRu81GR5F2q6EXkdeM2RHgaq3NsbIMT1kpPPk1UpiNH/er
	 dzlvL0xq2cAJT0UL5NfHDiofTpJZ6iD+g1BbXPm+8F/QYMw4gKuT1KIpDWNl4m09Wl
	 fwpiI26yreF5q4oH8vsFNUL+jGgXpGmQlPZzxX/x3s4jLrrjFBkirDEUaJo8Xzni13
	 pwWirCjtGheiDgtdMCvtldjflAqatl2CPoI7tE6R5NZ3BilLu6uhEAlfT1Z9DqaPo/
	 /PhzcGt+iafAZJxbePiwbAkZsJXEbnlnt7OW5NfZ9F399UVSi5PsQIN0/Ge6i1/el4
	 RhRQUay5GUiHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2F4460AF8;
	Mon, 26 Feb 2024 19:07:22 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 591361BF385
 for <intel-wired-lan@osuosl.org>; Mon, 26 Feb 2024 19:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4363D40342
 for <intel-wired-lan@osuosl.org>; Mon, 26 Feb 2024 19:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sIG57dxe7gPo for <intel-wired-lan@osuosl.org>;
 Mon, 26 Feb 2024 19:07:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A4B2A400B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4B2A400B8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4B2A400B8
 for <intel-wired-lan@osuosl.org>; Mon, 26 Feb 2024 19:07:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="28728048"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="28728048"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:07:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="7309326"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 11:07:17 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 11:07:16 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 11:07:16 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 11:07:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6E2YyKX4n/zqCbQL1R0s21ydtmhRlVmdCrA8xvGWRqLiKiamrKkVUqkouUUtZLuKLpNkA1jG+Ok+NpN7CGit5dCiYvtBs9w9EkTH2EGlJ/lgFyEBWeGccKtNElS0lQhHDGK9YBTXXS9eRTX+xCU1+5nvwrnXF8DFuKKLG8RRBam2dXp93pHX/Jyu+pVwgE120059vhT8MGqGdTaKFvF4g74qgah0WUysvMoPi2xOLJmxsGCj+zuj01vO/+jowQ2q351Gm9+Nx5pKmzZC+96emAtd/+U0vRUDY0z/122Tfrbe4dTdLM/cwxaMizen1Lh4ir6E7XGaTawNPEKatBM5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FpSq+/bqfQrUbh+lObPLHBbBQNHh88SJTpJzvD6eviY=;
 b=HKsIprOz7LncPyFoKGSaakDDKtDOJRCuKjrv0eaFQtxsDWs60o4IN2HAG8lEJ4yMy5aCe/4wfNZa7/d7cJw1U96dhm8IBf6si7G2+X7Fg+rXYhJki697xh94uAEyt9lLr1fmIU5zz+LDXOW770QKA6kcEjmvc5PMt8WY6a/CwcVJVDRi2jF84rECFeT/OpoLuIFQ/z3WaMz58Q+Qx6KK3Lics0Z6G1ksBPyLkhB27KBHovZdyDJ2EP4j7r2f9VBQ+fJOcLJxIwXROTnfPR8O5FF/GQ1eXrAFiOI5VSlvIF64HlPsDkBxjj2Aj4ey/TVThuYeXSSBd1p6XuCMIIVyFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Mon, 26 Feb
 2024 19:07:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7339.007; Mon, 26 Feb 2024
 19:07:10 +0000
Message-ID: <9a389396-a91e-4e7d-a557-94f9eee4d3ef@intel.com>
Date: Mon, 26 Feb 2024 11:07:08 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <7b655203-0dba-4531-956a-c63048f7de10@mpia.de>
 <cc999834-3068-42ab-a3e7-f83115d7d901@molgen.mpg.de>
 <ZdSmcQ1HI8cOSJhj@argosmk.mpia-hd.mpg.de>
 <MW4PR11MB58006701601BD1A1863C83CF86562@MW4PR11MB5800.namprd11.prod.outlook.com>
 <ZdiYnfCJX8d1QDHu@argosmk.mpia-hd.mpg.de>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ZdiYnfCJX8d1QDHu@argosmk.mpia-hd.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:303:16d::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ1PR11MB6180:EE_
X-MS-Office365-Filtering-Correlation-Id: 19e7ee1e-4fb6-4d01-b7b2-08dc36fe220c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tE0weAuUOz+pKTV0PP5TpNa/bHj651iQQ1pO+ZF2HU+dSxCo1E57sq1/qMFIM7X5G0zkwz5uDADmDOfMM+fHXm7VEaeyMF8xW5lgb8XrXr9+7fNa8SvbsP4Ha8sFQTrQlT5AK56/j8uqcqXMw9919jyQU7rZPZNbwLJ624Nz4C9oZzga9403iyhjFD/XLK58EnNml8y7y4oXsumEVFFwY5s02YmDfodyzH9Yp5kv/2jF7uVdU09NzF1JfIE/Nq1EyTU30Mv81bgqO6INfRairGH1g/FfmLinLc62klPr40Dt+BXExWkvLdYuq3hvEATHeKNJYvd1rHSyEYpkFX2GYwlzLjp1d4lqIYyTEcfV3J3I7u1HjGnyc7aqJCQe1dp1zUGb7BzyLG1RvFpRnNlD2otyEqgiuw9JG29/+2aUcTzDqlBClDjGCGQDKfH3pFmCLzX4MfDhgbh8XkOuEBdpRtmVCZ2GtdyQ9+vv+p0Tcx0f6GEjNcW6onbD5H48sNpzDGulJoK+t13PGxKraoimOe5gMCq7ONuCRCm3jv2zNVbirjsGTXHeSOatGVoy2L/WnN42my07JK+mGAY5ytav9VojYEoYXBIUZXKeeYAmtNlrrhyjA8FanpVhcCKPEk34
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0RpbTBzZ3VRMHd6MEIwS2hOWWswcUZ6eTBWbVZuNVBaS1FJUkx6YVdqNGMw?=
 =?utf-8?B?N1N1RGUzVWFQTEY2NnlBTWFPQVRFZ0xZM1dtUER2ZEErem9mMUdIbGNRV0NI?=
 =?utf-8?B?SGtBOFVzMUFvbXFrQ3gzMjBGamZicVd3VVJOZjV6RWdXRnVwZUlhemNkV3dQ?=
 =?utf-8?B?VFJ0TnprSGsyb0N1YXBTK0c1ZlJSUTZxZktheDFPK1M4N3c2aE8yRkZuaUJN?=
 =?utf-8?B?VEkybWhVOUdmSXJna2ZMa0NhYXMrUXhPM0xzSnMvK0FKcks2YnBvcGt4ZlBh?=
 =?utf-8?B?TTlVSDlhd1hEUDNDMk5mMU1pU2tEcFpleUdxSUhCaEpEM1RKdFo2SUErVHpv?=
 =?utf-8?B?eXpIaWJGdGNnV1BQNjJTVnV0UVl6RlczTEZudEdJdDAzai83dGV0TjkzQVp1?=
 =?utf-8?B?M3E4NG0zeGMzbngwSmh6Um4zUzMvZTJTYVhzSE8yM0NKbmRNRHVYc2M5eWhM?=
 =?utf-8?B?K1pydERMYkZmRjVRSFlXV3RnOVRvdCtqdncwWHZqdHo3ZkwyMzFvTXhiMHVC?=
 =?utf-8?B?VHBtYm1EbXRMNGdlaCszNEJ4ckVNblRhZFhXRWd3Yzgza1dacjAvaERBWDND?=
 =?utf-8?B?bGM4TFAyaHJtWW1ja2h2Wk0xV2VvYkJnWkEzZGd5VUhYY2VUVThzVFVmb2xW?=
 =?utf-8?B?WTA1NnN0YTI1QWltbVBuMnBkZTlFRTY3QVgwQ3FlTDk3WURxNnA5WTNBY2Y5?=
 =?utf-8?B?N2JhbW5xc2JWZS9zUXVlVUNDWTRwOHpwdXBhR0F1c0hnR3l6TmlNNkRoSGhj?=
 =?utf-8?B?ei9ZZ1MwRDRKY3ZXS2NTYkZLNWI4Y2VqRkJoWEdVYXpsTnJxV2Y0VFZXS0Jh?=
 =?utf-8?B?M1V6VzVDSStKSVd3dUxYVkQzRHhJKzFDS1JQd3lxS0pKcWVrbVcwd2RhbmNK?=
 =?utf-8?B?NDNXK1Bocml1U3pCN3NGYUZNeGJqbGMwM0V6enRyclg2ZVZFSStDZ3RpWGlD?=
 =?utf-8?B?VnNPSGpESTFHY0tKa1RLclgxTEpFbnVyNjk2VTdaU1RqYU9yV3RPMXc1SVRi?=
 =?utf-8?B?Qklvbi80azExMTAyWEM0V3RLYnNzekwyRXFtWmRIeGMxVFJPa0xYTWIvZFRV?=
 =?utf-8?B?cUk4NWFqUDVYQ1FKejZMUEN0aVFpSW1wMmVGaXUzcFJoUTF2TXEvbHJlTFJF?=
 =?utf-8?B?WWs2bG9UbmpHbnczVjdrOEkwY1F1SFdoWU5oci9ZaW5OVm9UQlRyRWVPVW5u?=
 =?utf-8?B?REc1c0VpSVZ5TWNJL1duWDMweXcrdFRjNXpWekhINU1lb1B2c09taUdQd0s2?=
 =?utf-8?B?Qm9sR3IwMXVTOGNVemptQWR5Nmd4T1ZuMmhUQmtZakxiOG1TTE83SUt3Sjd4?=
 =?utf-8?B?MHRRQmp4YzVvazlERlZ6aWNhS2grN2t0VTVBRTYvejUxTlV1WVVFeWpoSXI4?=
 =?utf-8?B?bDZiUkVDTjlzZXBXNitJdmNHOWtjdWNOQ2hoUEtORGpDVlcybmtuVWhXYXZz?=
 =?utf-8?B?ZXBmZTBOZjh1TWN6R0hZY3UwSXREOUF4eUF6ZFJnL0xRNnhEdThpaCtPNFdD?=
 =?utf-8?B?TUhNcmttL0ZWTEx2VzlIZmJqRW53cUVWWVpsb2lWTmFMa0E0Tm13K2p5N283?=
 =?utf-8?B?RzZZdmhqalVxVDE5TVFGSTNCSFAyNGozUi9LQlRGNSt0bnUvdy9HSEdjL1Jx?=
 =?utf-8?B?eWxRY2FhZ3UxSGRYaFV0SUtmSG1sL2ZBd1hzc1RYdlZXbGowK1h3NzRxVE1q?=
 =?utf-8?B?N0l6UEZqQjJPWUFHa0xNQ3NjMmZwL3cvZitDWm1Gb1ZhbDhnb05sRzhJLytz?=
 =?utf-8?B?NFpxUHdpS3FhUjMyRVA2UGJhaDZkZWRHeHRVOWZUeisvZ0x0MVkxWEY3ZnBI?=
 =?utf-8?B?TjEzbDJLSmhOOEoyR2F1a1NSWGVzcW9rS2lMQkVuRDZVY0FTTE1FVU9RYTZs?=
 =?utf-8?B?Z0Z2ajBOVXROSXorTzJaemZBUitRZkpLaVhwU0szbVBEY2EwWEQ3QnJpVGF6?=
 =?utf-8?B?ZmsyZ1RKM1FXVnlQeW1KZ1V0VVU0OC9iS3J3QURiN2dzUit1OTU4VnpaR2Fx?=
 =?utf-8?B?YWN0bXVWNllYL2w0enY5TktVZFJ6N2lLQ1h5U20vYmZGN2NQYWJlM3NkVUVP?=
 =?utf-8?B?c2FkbDI1ZWRkT1RPWXRnUjg1VDlibkNvcFlmblF3eHNRenZzWG9zVEZaY1dR?=
 =?utf-8?B?M1VuN1ZhK0xBdXNTdVlWMGMxbW5Mc3Qyb1pNOXpIbXFRZzExdTNjZW1tU25s?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19e7ee1e-4fb6-4d01-b7b2-08dc36fe220c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 19:07:10.1792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 11VC2Ct2+mHMv2MqantZeJLFG/L63LgVwNS3N91JW7we1Cz+kFFfVnqx2MGW+iwpvES2YqOdHz75yAJLgyGhjKpnKJBZ4pDBDineWGZbWLw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708974438; x=1740510438;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tePQh/SnN5f3M1X4J7836ENcxMj7WToo5Qoy7N6ppP4=;
 b=A2uzDd8am2B2Ht7vvqJ2idy14MlI1vbckr31hN5QG1id0rop4VUnQaTY
 XMjP023hbgaOJnu1zin8Hyu4L42aCkHCPaDqlQb8CI2q1XZAQx4luvdyX
 +hQ96EELRHaxdG4KnG1f+Zd6jfIK+q7cZlQVIdweP6WS4hYi/O/tnCzZh
 uxFHziJGfz1kDgxqrfLbXWEc6CYNu69CGk3J9wo9eixQYvOkkBWIaAqRw
 3i4jCwA1NBK3ebOH9OWT048/pAOSBGmv/BuHm6dhuAu+Ee+nj9f1Zx3Bi
 kd1wlhDowX2Y324fNLr9crfUCvE6CtwWjtVpIEyuJyWc78czq1o6zBA0o
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A2uzDd8a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Intel E810-XXVDA2: Too high TX timestamp read
 latency
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/23/2024 5:07 AM, Martin Kulas wrote:
> Dear Karol,
> 
> On Thu, Feb 22, 2024 at 05:30:09PM +0000, Kolacinski, Karol wrote:
> [...]
>>
>> On Tue, Feb 20, 2024 at 2:17PM +0100, Martin Kulas wrote:
>>>
>>> After having applied that commit,  the TX timestamp read latency stays
>>> unacceptable high (in the range of about 700 microseconds), i.e. no
>>> regression.
>>
>> This improvement utilises 'low latency read', where the driver writes
>> a timestamp request to a specific register, FW has to poll this
>> register every 0.6 ms and then the driver receives a second interrupt,
>> so that it can read the timestamp from this register.
>> Unfortunately, polling every 0.6 ms is the best we could do.
> 
> 
> Thank you very much for your explanation!
> 
> The fact the the firmware (FW) polls the TX timestamp register every 600
> microseconds explains the TX timestamp read latency of my application of
> 700 microseconds.
> 
> Since it is a firmware problem:  A updated firmware with customizable 
> polling rate would enable low TX hardware timestamp read latencies.  Right?
> 
> 
> Currently,  I am looking for other Ethernetcards with TX hardware
> timestamping capability.  I am not sure whether the Intel X710-DA2 (i40e) 
> supports TX hardware timestamps for all outgoing packets and not only
> for PTP packets.  Do you know the timestamping capabilities of that card by
> any chance?  The datasheet of that Ethernet card is not completely clear
> about it.
> 

The 700 series can timestamp any outgoing Tx frame as long as its not
part of a TCP Segmentation Offload. It is limited for Rx timestamping to
only frames it recognizes as PTP, but this limitation does not apply for Tx.

As with the 500 series cards, this device is limited to a single
outstanding Tx timestamp request per PF. You can't initiate a second Tx
timestamp until the first completes.

> [...]
> 
> 
> Kind regards,
> Martin
> 
