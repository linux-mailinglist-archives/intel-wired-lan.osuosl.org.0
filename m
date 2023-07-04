Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3082974738B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 16:05:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BA5B4018A;
	Tue,  4 Jul 2023 14:05:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BA5B4018A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688479526;
	bh=eglWW1W9snOuYJ0v3ipXkHiBxEd5LPnebO7TpiXQsv8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8Xfj5ebV4uraw/j9M+xZYgRzStRKMqj4/52dH0to3f6bmnJZNDRaCiq5lO/ddGuee
	 4q3IsqtgNmZ6RKt1PYURdoWMSiMHbNSnDFCd6ZAHagzyUZfWUsFklYjGyqqCxuKrbr
	 hp+Oz1LZ/uiBLWGQeKHu+DnRlE1YzS6+174awcW9syW0osRXrCqPqR6dQfthqqNWbH
	 PXXx/Nf57qAOYDuAAKkaTseBgU4pA8Ux0PwT4WMUDVDNQxJ4JeFXVt5Xa84andIa92
	 lZdhBsQShxrrbaZT/bxJGCu97/EQqpEUCuXDPomRKZVMk0+6JLWA0VIRxlrP2hvHl2
	 HTOqazxAHgR1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qeEEcyjbhMOR; Tue,  4 Jul 2023 14:05:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 747B2401CE;
	Tue,  4 Jul 2023 14:05:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 747B2401CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9828D1BF83E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 14:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EB55605A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 14:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EB55605A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UP3xuYjajbD4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 14:05:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B13560030
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2118.outbound.protection.outlook.com [40.107.94.118])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B13560030
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 14:05:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CReVl/ThCTRJGOO/nKjJNCmX3uwS40TKuwPLYDu65xK5tJgKu4C+5qn3rQ8hRibYc8RzBN++GqfHkcq4zRs7BC7DUCQERo/BSocItjYcIA9MF9upYDeMGpJDekJQ8wcEGzxm0b1zVz8fkfAW3Mn///mnbt+sb1JZIXppe6CkomIXy2VVEEDaInKrhip9in56ZNq3n2uAufLQdfyJGf8vWf73EmWcHHAQ1ysHwADhKe3q+uVGvAtTVPnAqpqq3efkUDbIgRy/bJZHDqw7Kli2a1Qrj9019jIuzR6Bg6rJU0iE1lk4E0rpz+niaMso59X39XhCT0wCRC5xyhM5jGnZBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HIRsIkT+cMpyQ4EuKIzy1204ySCRpfhkTuxI7FH/3ww=;
 b=XLnBIp4yk50V5CcvCd1hiOiRQPIViHldfGMh9nRvwvA/Z8xM5vRIZogYkwPo7ak0CwfXzCAcQsGWMKLgaw48Bxhd1HHv5DSKvngLVVOI7wtNQVZxsueysXzVUocHNO9/KwBu/vr/3+M5kY76twA0wx7ebfzo6TYanNhUUneGIx1CXfpg5skPzqCLgorg7GNjLn0NCP91IDpzrPvPFJi6h4Lso/C5cEEtRW2b00YME9o8e3Z67s743GQkvCxUqvjM39MQGak/2D4Fczasb6LEVU1Sx9ll6DmxJk63qwkLVC9w4kKbx7BoeWNIWuwQ4DZtURSWwYJv2WpQQmkADuWB9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MN2PR13MB3871.namprd13.prod.outlook.com (2603:10b6:208:1ea::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 14:05:13 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%5]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 14:05:13 +0000
Date: Tue, 4 Jul 2023 15:05:06 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <ZKQnEhoWVGQVMGtb@corigine.com>
References: <20230703113000.104067-1-jedrzej.jagielski@intel.com>
Content-Disposition: inline
In-Reply-To: <20230703113000.104067-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: LO4P123CA0426.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18b::17) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MN2PR13MB3871:EE_
X-MS-Office365-Filtering-Correlation-Id: f3e30f15-7ad5-44c5-096b-08db7c97af8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HmgfrmhnTCSjjhgrYRpLq9iS5CrR5qPFjGbzhhxuaCw1Bz6kXeokgAeVRa9tZ73Ni9DLvEwyfoDHZsi81Ly5opEpguB/qMlIY0gG9hZT7eznGshiA/PCIkROVLIUJLauucyTiuzICOOqWBlHXtDxQ0UkipcEUltjXNllkK7jrGoZ2ZaaZVjHZ3Kb/13NMjrUN3LapGwr34gfBE04Hcbm3/kADv28tsFNhLzx5U1LXChFDGYWLgP1gRvAlABEeWSRhgUrc+crgYC7naxuhHGvaGxbrq1o+Bsdcnwf9Pj7EMBh5rCnq4VvGAi6t8yrOE8q/DQUHjLS8gez1lCqXC+jiOCCJp0bbBL9M9CngdpLMOEXKXud3tDa7IG+Z/h1Jxn6VF1vn01X8qbwf0/L1pxdPZUtZNgX6sbo2/Et91ZlCdInWB1fakzGFpn9b7Mgmb3upVqEYHpG/jHcPE8AgkNYPy7Knr3yjck7LRQ0MysRW35UrVmGfj4R9FVCru18JGfUEC47fET+kcfHzMAxzVBUpfLbfHFtifsvH3zo6r6tilYkDaWi2PGFJ/rFGV8K9hLVZGsd63Yz6TJxw1ZASSZeIg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(376002)(346002)(366004)(39840400004)(396003)(451199021)(26005)(478600001)(6506007)(6666004)(966005)(6512007)(86362001)(2616005)(186003)(38100700002)(54906003)(4326008)(6916009)(66946007)(66476007)(66556008)(83380400001)(6486002)(316002)(8676002)(8936002)(44832011)(41300700001)(2906002)(5660300002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ap4rQkZMK9lOB+m35CFGfTEjemdSWgIxZ39GyMMjsI9aYhClLXsfyR9HqWPb?=
 =?us-ascii?Q?ZtvYoTTLxLbq1F76mnsfSPIlw3MBbs3cnrr9T1DLpXo0oRJ3B3ZlENEywzTL?=
 =?us-ascii?Q?f+1lCWpexMfhRuxtjs7VIZp331GQKLsQaqwvQjV9leBEaXwbPEvGQXoA4bk0?=
 =?us-ascii?Q?58Hr45ID6VbOeYwNMpX3NwUhu4JJQtjdxWFzCGJBo+c9soJhqtX1rjI95WxM?=
 =?us-ascii?Q?B4bRqzH2zIn1t0W+yjSqoTexgxAq3yM0xluj5KpxhhWVfJRsuAxtJ95cghWb?=
 =?us-ascii?Q?m1JAzcayTPOEnnT4+0tGnJOdAM50Rkv2H5uTdXyJy+D36+2iJ9JFHrPwl94t?=
 =?us-ascii?Q?/SEeGwySTXatIOmd6+tuWEsOcjyrICnr44FoY2JSQdgGzvQNWLqOTBC7wdlS?=
 =?us-ascii?Q?RFQFm2PPE13N33PJ+g4u8nfLPsb+vqCgolJPhjWKxAohEzx3ne9Loh11XVb2?=
 =?us-ascii?Q?b3JkS/7In9c/j5d2kNGa0e+8xKngJH9+czMk1JX4o21GY3GEGhGjhltGrleM?=
 =?us-ascii?Q?OYi65hEerEH0j/y3O83IPj3yk/+JnZRShVMdM5nJvM230WTD98dpqgWS1gGS?=
 =?us-ascii?Q?zZ2hG1hDCDehWkNx8BiK38kR/hMueqVZ2vm1l5fKNXsfzQ943y+yUh7AvBC4?=
 =?us-ascii?Q?FF69irozHUTIfUP2ot4ukkoTcVvts7HPZkeVTOwrb/9sKxbPUpgs9TlvH0V7?=
 =?us-ascii?Q?ZYuZfpCKRzNw/jsDBV1DQgpM72vYSU6QaR0tBGmr0b2/exqBLZiEA11/CUX5?=
 =?us-ascii?Q?OQAKfKMj/bGUH7HBV5Gzp18Q8bLMTrd6798gMRIf1r+q5CsjwQVmnkTaR72O?=
 =?us-ascii?Q?W9LpXOfuwtCTx2fYXcXEPrX9/BeFI5pSYcCY2S4dx7Gkl2gketYyP0CzBZN7?=
 =?us-ascii?Q?8ZEBeKiA4ws37C8AFMiWlwruCyqBqlSwEluieUotfW9Seq8+eMqNzrjDDiLp?=
 =?us-ascii?Q?0SvHbhUMLgprf1CFWZLaXRs42MqP1Utfam394AJ1pfoaCQscfsKY1qAlpEXd?=
 =?us-ascii?Q?fwpwlOCBI3TGCCQBIpcXMqiVPSJ/V28jNTXHWYVbG1Gr/WWI7QJEOVJxcL1z?=
 =?us-ascii?Q?ajwchV1hEy7aUcAq6lUKaoDPWQftZEWW3Qb2S4Dg+v2pGOiED/wXhE5omYFc?=
 =?us-ascii?Q?NaKkrVcYAUMj09FtnU/D2wVne6NTdoXOy90kGjpIj49ZD/rOCE8VZyY4G42z?=
 =?us-ascii?Q?WByBipjXiBdZbntNC1l8jXOIDInu8vXLzk3FbdC83yJj6H4x09OdmaBPwPKO?=
 =?us-ascii?Q?LJrjyERGstgdOaGucLnuWiFydVoG9U932uMgKkiWx64wyyPV/5l8voX/0Tyf?=
 =?us-ascii?Q?jsCdUVaKIfSWZ5mIGCt014gf1UgqzHAk7l0I6IyeZtIfE/hJTBjsB2pAYSK6?=
 =?us-ascii?Q?uI4VHCbOoDwKSZYmVhUdWfZmhMjH3/QdGGpsckcjkq3AvHsZjHjMGskMwFle?=
 =?us-ascii?Q?aRSo5qZR7PxUWUYRJ9CWJ9oXSGpuK/d43pF/lDGCnJHHU8IRb3amUN5ncQYl?=
 =?us-ascii?Q?8HOUoMnxYcHPrXw1svxhpTD0NZViuJAxYxqbQdBsX1o1I3aLH/ChMq3D0teO?=
 =?us-ascii?Q?zgEBUB7BIUlKQ+82zT7CNoOOHWF93tp7tnld/cxnbJJafR1aFqCa5ASzfYNU?=
 =?us-ascii?Q?fQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3e30f15-7ad5-44c5-096b-08db7c97af8c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 14:05:13.1909 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1tMgwdE7E3PRdaZgXm0U4gj5uAZvrV0d5S01Cmxl0mzAvaU+xrzwa0HD9f5nq1oOUj8EIghqdcUmwcXfpjj/evWicbuCMdZAi99tHf9gOk8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB3871
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HIRsIkT+cMpyQ4EuKIzy1204ySCRpfhkTuxI7FH/3ww=;
 b=QEUyWkciyBOGRQyzYWaqsa0VMT83+L9DR2Tt1rZe9JtA+G0kOBIwt2Rzi5MVUUjeWfGqMyINRYu3zpirq86xBaIYq9RsDTpclPDy9eBzP6dt2XMhX6qRNlueXbd2yCeVtpzHfwG4QpM1Sx+TEzipE3zV6TuRo3GFsuBAvCaKxDQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=QEUyWkci
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix memory management
 in ice_ethtool_fdir.c
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 03, 2023 at 01:30:00PM +0200, Jedrzej Jagielski wrote:
> Fix ethtool FDIR logic to not use momory after its release.
> In the ice_ethtool_fdir.c file there are 2 spots where code can
> refer to pointers which may be missing.
> 
> In the ice_cfg_fdir_xtrct_seq() function seg may be freed but
> even then may be still used by memcpy(&tun_seg[1], seg, sizeof(*seg)).
> 
> In the ice_add_fdir_ethtool() function struct ice_fdir_fltr *input
> may firstly fail to be added via ice_fdir_update_list_entry() but then
> may be tried to being deleted by ice_fdir_update_list_entry.
> 
> Terminate in both cases when the returned value of the previous
> operation is other than 0, free memory and don't use it anymore.
> 
> Replace managed memory alloc with kzalloc/kfree in
> ice_cfg_fdir_xtrct_seq() since seg/tun_seg are used only by
> ice_fdir_set_hw_fltr_rule().
> 
> Reported-by: Michal Schmidt <mschmidt@redhat.com>
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=2208423
> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
