Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D797CF86A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 14:10:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B356D83AC2;
	Thu, 19 Oct 2023 12:10:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B356D83AC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697717422;
	bh=xvVOV7KaGZ85iFy669HpaVp5z2uWZrHYCBTzINbV9oo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ptI1r3JVE9jN/0luk3jCD7u1pwFTIM3bhcSvDy+5WnZ47mrOHDQacY1QHf8A1l6cq
	 nOZ+ZOMy1yRLwAEX+sL384GP1Ld+nsa5Qr2taL6fWNRImWPKTy3BO6k+bW5jXwKgSf
	 1XlaYHZP0Cy7pvvocygzcMcqcVwhbgRY6qGoprWSvKTEAlIYwOV4JFhmyd4tYcgxBz
	 4YqbqhM2WEoL3iIkszJjykxGyVR7wjM82FBjcX2OKgmGXxCETqf0d9NpROlxXJWML8
	 K9RUJtY5PYyMEdyaPqWRosT6E9BC4YxF3ggHl5gjZEkzdy7r6qt+I80Mh+rezb9eXl
	 a3M/WOlKecGZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wZnucL63-Qrw; Thu, 19 Oct 2023 12:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F3EE8188A;
	Thu, 19 Oct 2023 12:10:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F3EE8188A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4CD1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 12:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E79042ED9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 12:10:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E79042ED9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSMGo7cmvHFe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 12:10:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACF7142EFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 12:10:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACF7142EFA
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="371297318"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="371297318"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 05:10:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="880620893"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="880620893"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 05:10:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 05:10:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 05:10:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 05:10:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3a05z7gfpEiVm6/+g/ZSWTcwA6mOSnUSUWQwhoKoyNHQoNQXuVvfQ4sT/9KC0Toa/PFUczKZ1R/YIllL3ARQflSbraCjlrcAc0137bs8HRgbdbcid3DtYm/VWztxPLYrkOTyFvO9kK6e+djxuyOpNk60/SS9/A4CPiQ4snZ7C1MVPnZDZtmqV4QmLFuBcVjKA5IjLk+IBiE8PWAjkG+CBWbuuXGeiedDRgh4r7ktRZhb4/bwLkQYF4HeD7570mv9zSCGfsKa6eru2dAZGIPmVw8YO5j+eJyrPGpgohKmH04m2jIeV+BdIClpls36I9mWdhfg3LuZDDcleN4F47fJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ymg2GIcWZ53tqWJV6DmFP6qaGNhrITsy+MaM8wgF14o=;
 b=by7lrInCthwlBhmuGAEeQfRN4lgkAVmTjMdRywrGz+OJI8hjCVM7uWi9yYZb4R4bFlJQcK2Cj6o56UJWxx2BAHLZXMz5JWgjZgHggF13nVsw2iOL71LfZydQVF1ieEB1L1ni9tmlqsYl8t18+nCneJ72dxmSe107S3ksZdBsQ1Vr6VBdguIwA+sSTaSv+C2KgpqNPMQWuFOKM+LMpqUGc/r1KH2aj87vwqQYuKDB130nQ9xa72N+sCTuLvAMfOFgoFnFWtA87lmd0SY1KrBfynazcWh4EDLOteJYC16RYp5YF87xWWPWw56z6QPGnGfcDNEdS7MNeoIGFkOU/+L35g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 BL1PR11MB6050.namprd11.prod.outlook.com (2603:10b6:208:392::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6886.36; Thu, 19 Oct 2023 12:10:07 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::551d:c6c9:7d7:79cc]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::551d:c6c9:7d7:79cc%7]) with mapi id 15.20.6886.034; Thu, 19 Oct 2023
 12:10:07 +0000
Date: Thu, 19 Oct 2023 14:10:02 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <ZTEcmh2GNi0Ugn3/@boxer>
References: <20231018163908.40841-1-maciej.fijalkowski@intel.com>
 <17b4725f-b81f-4760-bb90-ac8fa9467227@intel.com>
Content-Disposition: inline
In-Reply-To: <17b4725f-b81f-4760-bb90-ac8fa9467227@intel.com>
X-ClientProxiedBy: DB8PR09CA0020.eurprd09.prod.outlook.com
 (2603:10a6:10:a0::33) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|BL1PR11MB6050:EE_
X-MS-Office365-Filtering-Correlation-Id: 111ce528-d5a0-4387-b00d-08dbd09c5551
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yQ6bmWQVp/RNhqBBcXZLFVXBrKMPg/Aurp/fSWo3W4E0nNxGtH5nkd9a2ZVzrSOwEU8dXSDzIavHihDximUdqmRolP2oPwCXabL+q7GJvHUhCWA9gP9KKgA9uK1U4JgyDE3hMXv7hAqCrkXBSCLaCKaV3P2tH+kv3FNSbn1+7fHoW+6RtYkTfBM0PQa1jn5C2Sdim3O2aEE+02Eya9v8Vx9ToyDDPiAfORjVqSDUZxKweqMQVigI0rtrHeDRaFqp6MWUQAnsOkRTcalvC1jSjQakwe5Dqec/YzQ0XNnGhaW26VP0CCkLqp9Qkm2oWo804XxFt5F2P0vGWd5g2TiddFfUhgdYmxRLEqQnz2nulmwTIneo2dXSYlAVEHjU96pd49c6Wn8SUDM8569+Y3M1xrnb+8pyAhFCwagiBaL8t8qRzilk/ITezKMf+bD1gDaQEEX/OXLbcNVkiwJWb1NA7qUt/pfgu9hmtNMpjmRUBjPxhJalY8nUCyceYr5Pv4i3P/mgAKAAf2FeI2m/FBJMOcSOXlyQWXSjZOl+qPGS7lJGGNK9SqyQSuwv2eun7tVS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(39860400002)(136003)(376002)(366004)(346002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(6636002)(82960400001)(6486002)(316002)(41300700001)(26005)(66556008)(66476007)(33716001)(478600001)(66946007)(107886003)(83380400001)(6512007)(6506007)(9686003)(6666004)(53546011)(38100700002)(8676002)(2906002)(6862004)(4326008)(8936002)(5660300002)(44832011)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MqzYn8VpRzPdGkhNL42q51KD2FCS+PMPvMT0OTwXGPjPR8McHmfn4l+3amGI?=
 =?us-ascii?Q?5Afb/WPYSdsKrMmdtm8jHJstTR1QJnCYlCvt12oSGYOssyAmBtHivaZta8hs?=
 =?us-ascii?Q?qlD7IgQBR1n5F+SlFc2R0451lbG2vER7Oc7EYdBXVfbOwvH5QKZH48F5JSn0?=
 =?us-ascii?Q?zE1liV4iypwz3+1hWPrhcqmjpqkTb2lPKlEZvy+OStzWsEzyO6Y8CnUSZ0uY?=
 =?us-ascii?Q?mtmxztMsWb1mgKLXQgHqyq1xyCYbpun3198s3f1dzyGiLORMe2uFMzlKprud?=
 =?us-ascii?Q?KusH0eQxAne0MSXjIkKFF54ZQXvm0WVnr12yLBs5oGeO2cjPzFSraMAODfmL?=
 =?us-ascii?Q?aAbJnAGt6JF5B33dOAzUFb6VYDF8ox5gd4RQ5NJR7zm0qilm4TqFpz53CsV7?=
 =?us-ascii?Q?24TEpeHUfjauqHl0PJ6tWhZecq2YAR7g2o74Md8Cx3T1PVj4fnqzXV0ienvT?=
 =?us-ascii?Q?L1i7GrNtXGSYhyTnL6OBZ6UvS3CHEhnlWlMSIzCvjZma+SyFQQnNnvvGLEpy?=
 =?us-ascii?Q?9UCzHLsUx7pDhFL6aXi7e1/p8QZu3OOoOamF/jwoqW+a7rlSTEKVvw+XhE7p?=
 =?us-ascii?Q?gCp3gdfdzmc4L3Yx0rea8skYHPUtQ7LP9UGbG3KbpxYx+oCSfOe3CoCf9GDp?=
 =?us-ascii?Q?UTxHa35ciDvPzMTBXrBepHqwZrYNjB+0F0C1o8Hfc3LQUo3NmmJC7YLgug8o?=
 =?us-ascii?Q?ES/El2ONVMd9iSeY45G4xkPFux8ZJoc2V2Tm5U77U0DmxxSl2eS4Vx0wM5ei?=
 =?us-ascii?Q?kq8TJD62BlTNwsIJF5GzYsImi15ZbhLUHG+DUQFIs2gKFh7iJ7807oRZL6om?=
 =?us-ascii?Q?UBM5HQg/9aOvWiD8OPBkNRwTOfquuXNdeLBsiS11Stm8lqlpM2FY4UZBkHDs?=
 =?us-ascii?Q?JBemurBBsYqZhJpKSzQ73pvdUlbHbKIscJqPwtkE5wY4fKLeGc+pYyp5TesJ?=
 =?us-ascii?Q?Bq25OyXtWXoT41dBvCbjWPVqkUEOIp9xFDWO+Sdgy3pDPA7FrbVH4wvsXxMX?=
 =?us-ascii?Q?y6WmjRmTMyZGSsMtwM8NQJU1GiOGk3L/03iZy3I7cUysP8J56gcUwOdIAEp6?=
 =?us-ascii?Q?0WArGWcaXURWTzC0gVrpVWh3o5M1IOoUPJ7kzpW+8y/BzZGRyL5oF0mka7JR?=
 =?us-ascii?Q?PMNHTjlhCeYBXgElgAU9MM2coKYdlACLse8E2DzZRmoJJvmuTdEGbHl94ztY?=
 =?us-ascii?Q?TLR3GyQ3N6YQG2sMNxYNXqaghLTZGO8cEJ4jod4c9qAimGThgrtxpdwLEESC?=
 =?us-ascii?Q?hix2RUuNs+ppqQUojiuL2zV/oNR6kI2TE+GWCPTzEfORNXQpq+QuwAGk4tZE?=
 =?us-ascii?Q?KLeBB88xJwQn1pCkJPjvi2QWsWJYtLm0vKTJ5oc851r2qLf0k13mCTJrS+9s?=
 =?us-ascii?Q?hMekvYQwyGk9lDasunFv5h5JiiXDEiHp2RWKIFjtvTDwOW+cZtTTp2klGVw5?=
 =?us-ascii?Q?9EPrZs6cNppy7Nb1tar81NoUC7NpMspVXI1aoS2wO+Z8EHD9y3PHP4rYrvTi?=
 =?us-ascii?Q?fEcqib7+1ngCV53wj3V0An76XV06sqN+o3Vh0qE0ZZpprCcM8D7556ASGkpE?=
 =?us-ascii?Q?ncGeySDZ7WDVDNaVwFDzVT+Ao2nNMpiYIQMg+BA2QS9h1J53Ey27Gluv3Ay8?=
 =?us-ascii?Q?Bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 111ce528-d5a0-4387-b00d-08dbd09c5551
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 12:10:06.9224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vah78Dwy6xi8keaN5gWoMZ38jI9RK0DoYkn74vrZALHL0Yn2A+xrLytvEmXIM6Si7MAOg4Tz/gi0PpL8pqXDD0lG8mxBgRZanCBlqbLtCLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6050
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697717414; x=1729253414;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NT4ZefWEdbzk0hLdqXzwZLgomx1OmNAdzb7vsysfwQo=;
 b=ljeF4M51/NYlNAGvF5nn8e9RP9zIyND+B+vgq+pm50Iw+uSl0P6pfQuQ
 YZ6jZyzn1DhfEbCOKe1nsqk+s3dj9Ws6eBxuS73EpTlPDE6WbxTQOuTAn
 2uIsYvfodHoiIQU4up5Wr2ptaQoGJnp8MdQMnZ/mMR09JX+SwTEOWIDkB
 v2PGJy0NbBiIMUx4ksgSjQzA5ChbZyASoqc90X5Md7TlM8nJWcFkEyrlU
 X1qfCoBWC2P+RTOuFP4OO6j+j/juzzdNT/4JgTWfEhocdd2R7UsBVHy7r
 XdFKCu419P2OGpF1ko2a3Q3xcEhjMu1EURMqq6zrHNagDb1FWMbYuzJnH
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ljeF4M51
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: xsk: remove count_mask
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Tushar Vyavahare <tushar.vyavahare@intel.com>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 18, 2023 at 03:03:13PM -0700, Jacob Keller wrote:
> 
> 
> On 10/18/2023 9:39 AM, Maciej Fijalkowski wrote:
> > Cited commit introduced a neat way of updating next_to_clean that does
> > not require boundary checks on each increment. This was done by masking
> > the new value with (ring length - 1) mask. Problem is that this is
> > applicable only for power of 2 ring sizes, for every other size this
> > assumption can not be made. In turn, it leads to cleaning descriptors
> > out of order as well as splats:
> > 
> 
> I assume that since ring size isn't a constant it isn't worth trying to
> check if power of 2 and then use the shortcut?

That would kill what we were gaining from that micro optimization (lack of
branching). I was thinking about INDIRECT_CALL() for ntc update based on
ring size but I came down to conclusion it would be overengineered.

> 
> What about just enforcing ring size is a power of 2? Any reason not to
> do that?

We used to do that on ice but then customers yelled at us that they can't
use max ring size (8192). I know i40e's max is 4096 which is pow-2 but I
am not aware of all of the use cases that people have out there.

> 
> Thanks,
> Jake
> 
> > [ 1388.411915] Workqueue: events xp_release_deferred
> > [ 1388.411919] RIP: 0010:xp_free+0x1a/0x50
> > [ 1388.411921] Code: 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 55 48 8b 57 70 48 8d 47 70 48 89 e5 48 39 d0 74 06 <5d> c3 cc cc cc cc 48 8b 57 60 83 82 b8 00 00 00 01 48 8b 57 60 48
> > [ 1388.411922] RSP: 0018:ffa0000000a83cb0 EFLAGS: 00000206
> > [ 1388.411923] RAX: ff11000119aa5030 RBX: 000000000000001d RCX: ff110001129b6e50
> > [ 1388.411924] RDX: ff11000119aa4fa0 RSI: 0000000055555554 RDI: ff11000119aa4fc0
> > [ 1388.411925] RBP: ffa0000000a83cb0 R08: 0000000000000000 R09: 0000000000000000
> > [ 1388.411926] R10: 0000000000000001 R11: 0000000000000000 R12: ff11000115829b80
> > [ 1388.411927] R13: 000000000000005f R14: 0000000000000000 R15: ff11000119aa4fc0
> > [ 1388.411928] FS:  0000000000000000(0000) GS:ff11000277e00000(0000) knlGS:0000000000000000
> > [ 1388.411929] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [ 1388.411930] CR2: 00007f1f564e6c14 CR3: 000000000783c005 CR4: 0000000000771ef0
> > [ 1388.411931] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > [ 1388.411931] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > [ 1388.411932] PKRU: 55555554
> > [ 1388.411933] Call Trace:
> > [ 1388.411934]  <IRQ>
> > [ 1388.411935]  ? show_regs+0x6e/0x80
> > [ 1388.411937]  ? watchdog_timer_fn+0x1d2/0x240
> > [ 1388.411939]  ? __pfx_watchdog_timer_fn+0x10/0x10
> > [ 1388.411941]  ? __hrtimer_run_queues+0x10e/0x290
> > [ 1388.411945]  ? clockevents_program_event+0xae/0x130
> > [ 1388.411947]  ? hrtimer_interrupt+0x105/0x240
> > [ 1388.411949]  ? __sysvec_apic_timer_interrupt+0x54/0x150
> > [ 1388.411952]  ? sysvec_apic_timer_interrupt+0x7f/0x90
> > [ 1388.411955]  </IRQ>
> > [ 1388.411955]  <TASK>
> > [ 1388.411956]  ? asm_sysvec_apic_timer_interrupt+0x1f/0x30
> > [ 1388.411958]  ? xp_free+0x1a/0x50
> > [ 1388.411960]  i40e_xsk_clean_rx_ring+0x5d/0x100 [i40e]
> > [ 1388.411968]  i40e_clean_rx_ring+0x14c/0x170 [i40e]
> > [ 1388.411977]  i40e_queue_pair_disable+0xda/0x260 [i40e]
> > [ 1388.411986]  i40e_xsk_pool_setup+0x192/0x1d0 [i40e]
> > [ 1388.411993]  i40e_reconfig_rss_queues+0x1f0/0x1450 [i40e]
> > [ 1388.412002]  xp_disable_drv_zc+0x73/0xf0
> > [ 1388.412004]  ? mutex_lock+0x17/0x50
> > [ 1388.412007]  xp_release_deferred+0x2b/0xc0
> > [ 1388.412010]  process_one_work+0x178/0x350
> > [ 1388.412011]  ? __pfx_worker_thread+0x10/0x10
> > [ 1388.412012]  worker_thread+0x2f7/0x420
> > [ 1388.412014]  ? __pfx_worker_thread+0x10/0x10
> > [ 1388.412015]  kthread+0xf8/0x130
> > [ 1388.412017]  ? __pfx_kthread+0x10/0x10
> > [ 1388.412019]  ret_from_fork+0x3d/0x60
> > [ 1388.412021]  ? __pfx_kthread+0x10/0x10
> > [ 1388.412023]  ret_from_fork_asm+0x1b/0x30
> > [ 1388.412026]  </TASK>
> > 
> > It comes from picking wrong ring entries when cleaning xsk buffers
> > during pool detach.
> > 
> > Remove the count_mask logic and use they boundary check when updating
> > next_to_process (which used to be a next_to_clean).
> > 
> > Fixes: c8a8ca3408dc ("i40e: remove unnecessary memory writes of the next to clean pointer")
> > Reported-by: Tushar Vyavahare <tushar.vyavahare@intel.com>
> > Tested-by: Tushar Vyavahare <tushar.vyavahare@intel.com>
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 22 +++++++++++++---------
> >  1 file changed, 13 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index 37f41c8a682f..7d991e4d9b89 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -437,12 +437,12 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
> >  	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
> >  	u16 next_to_process = rx_ring->next_to_process;
> >  	u16 next_to_clean = rx_ring->next_to_clean;
> > -	u16 count_mask = rx_ring->count - 1;
> >  	unsigned int xdp_res, xdp_xmit = 0;
> >  	struct xdp_buff *first = NULL;
> > +	u32 count = rx_ring->count;
> >  	struct bpf_prog *xdp_prog;
> > +	u32 entries_to_alloc;
> >  	bool failure = false;
> > -	u16 cleaned_count;
> >  
> >  	if (next_to_process != next_to_clean)
> >  		first = *i40e_rx_bi(rx_ring, next_to_clean);
> > @@ -475,7 +475,8 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
> >  						      qword);
> >  			bi = *i40e_rx_bi(rx_ring, next_to_process);
> >  			xsk_buff_free(bi);
> > -			next_to_process = (next_to_process + 1) & count_mask;
> > +			if (++next_to_process == count)
> > +				next_to_process = 0;
> >  			continue;
> >  		}
> >  
> > @@ -493,7 +494,8 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
> >  		else if (i40e_add_xsk_frag(rx_ring, first, bi, size))
> >  			break;
> >  
> > -		next_to_process = (next_to_process + 1) & count_mask;
> > +		if (++next_to_process == count)
> > +			next_to_process = 0;
> >  
> >  		if (i40e_is_non_eop(rx_ring, rx_desc))
> >  			continue;
> > @@ -513,10 +515,10 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
> >  
> >  	rx_ring->next_to_clean = next_to_clean;
> >  	rx_ring->next_to_process = next_to_process;
> > -	cleaned_count = (next_to_clean - rx_ring->next_to_use - 1) & count_mask;
> >  
> > -	if (cleaned_count >= I40E_RX_BUFFER_WRITE)
> > -		failure |= !i40e_alloc_rx_buffers_zc(rx_ring, cleaned_count);
> > +	entries_to_alloc = I40E_DESC_UNUSED(rx_ring);
> > +	if (entries_to_alloc >= I40E_RX_BUFFER_WRITE)
> > +		failure |= !i40e_alloc_rx_buffers_zc(rx_ring, entries_to_alloc);
> >  
> >  	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
> >  	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
> > @@ -752,14 +754,16 @@ int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
> >  
> >  void i40e_xsk_clean_rx_ring(struct i40e_ring *rx_ring)
> >  {
> > -	u16 count_mask = rx_ring->count - 1;
> >  	u16 ntc = rx_ring->next_to_clean;
> >  	u16 ntu = rx_ring->next_to_use;
> >  
> > -	for ( ; ntc != ntu; ntc = (ntc + 1)  & count_mask) {
> > +	while (ntc != ntu) {
> >  		struct xdp_buff *rx_bi = *i40e_rx_bi(rx_ring, ntc);
> >  
> >  		xsk_buff_free(rx_bi);
> > +		ntc++;
> > +		if (ntc >= rx_ring->count)
> > +			ntc = 0;
> >  	}
> >  }
> >  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
