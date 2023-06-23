Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CD973B144
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jun 2023 09:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACC6D40BE0;
	Fri, 23 Jun 2023 07:25:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACC6D40BE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687505125;
	bh=9ETx5Yub2I3TSdcn9beJSeCObuGR4Ya4d9Pev+6LkqQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7ZcZ2QBAbdOZbsx6TBsR7hlV6pBQ2CYtVBb/JidRwHj+boQGcsCahhwJF+nBIzHoC
	 Cgmn5hlYyrPNzOkyVmUWAvlCJMoTIYdVFS50yxbS9vqL+yhhRR4kMxARf+TNxVamzZ
	 4DvXpRaeZRZIJjRVTXV3KOnZ5pP5fNAztJ+L/RsMHlkGb0o9RMW+zxGF+7VBQAAPWm
	 Gduef0EBQETml9MNvJvKCEMqa2uWixGu5Zl7LC2DyLlgT3BEep3w3IbOFd3VN+QHoc
	 c1YfpJHpxp/bH0e1W8UfbLHA4mXmmiQj3gUqyP3C7JiiAuv0rB9wbEb4Q58Fie2pbd
	 /0Dz2MCva0nVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mc4wf2xoh7dc; Fri, 23 Jun 2023 07:25:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9461401D5;
	Fri, 23 Jun 2023 07:25:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9461401D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7BF371BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 07:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 53F1C81B8A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 07:25:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53F1C81B8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53cK8ui-O00r for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jun 2023 07:25:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82003808AE
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2115.outbound.protection.outlook.com [40.107.244.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 82003808AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 07:25:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gEI6PwjPRUnek+JRtm4jgxd9s4EPfX0Z2UpuHS2Dt6qmH9DPHg42kIii6IGbFN6vNb5FHFjV5AtU+E+lgQm93E9B9zOB/dSx9IeoChpiJHy14Mzh6aS+S6A3+HMvUQDYT25Y5EZtj2MSguQsY7SNUx9vq3JKrNnfMNRsKDE8tTQ3Agr1cYW4Los2QuuZwWLarjjNIrzX7Dll3FfjxNvsor/hPR+iA1H6UrcDn9rX/8SLUAD6wmivX0whRKqr3ef8G6rewQ1ThL1o7ce8K41EqtRNHDBqVP6qw75YmqCkQeEfdYgMaiSlclXrD38oOE8pvyVrjRfI7qb211k/G3vhhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BxPmqcWk7DjnSjAkQAr3Gacfrh77o/TApBjhd4vgOTw=;
 b=mxwPix/UkBBq2fFv6tsvRqGX3T8rVwNdrsvEDGipOgXkngRPDWiO0z8Rz+0caFmLLPu0vbT6XU1de8t1KpDWM7WTaj0gqLUWM/FUWDYSAT+P315SasvoZoNTA7ct/5dcqyjju+l5Ok0duYRni0pd0QmKZ7S5RSHAxnfkE99Eh39lqQX3ELZXvSu9ZFeRGbpIGSBZHgQsQMcxhg3lQm/A48jxRokxcAFj6DC/7fxqksMAQDQC/zcgyPFyoQ8bh93LeQt9esro/HmraN86XqEnZENbyTd7Wtg0/Xr/J99afUoZuho0xzNkthSVjcT07U72oh6kitzuox52wmdSd0zWQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SJ0PR13MB5983.namprd13.prod.outlook.com (2603:10b6:a03:43f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Fri, 23 Jun
 2023 07:25:09 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%5]) with mapi id 15.20.6521.023; Fri, 23 Jun 2023
 07:25:09 +0000
Date: Fri, 23 Jun 2023 09:25:04 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZJVI0CaH2haaM8Br@corigine.com>
References: <20230622133513.28551-1-marcin.szycik@linux.intel.com>
 <20230622133513.28551-2-marcin.szycik@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20230622133513.28551-2-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: AM4PR07CA0023.eurprd07.prod.outlook.com
 (2603:10a6:205:1::36) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SJ0PR13MB5983:EE_
X-MS-Office365-Filtering-Correlation-Id: becaaa4e-93b6-4e62-bfb2-08db73baf987
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qmr3b613EvCk+uqUOaCmiaibzeFOM0sgLBldB0nFPAqLJVG4Vo9+MMdWJzQVlfNzkuYOykOXAe0mSTGoF+tJPK4ykJoMbnwjKNMX6mrcMW0LVM/I8hW/9SI4jwt/AjxkAP++mWh0C1KZujKzK8afJJq/un6qsvRgBYczO//LB2YxKxjM3Dd1otDpdCMNKey1fqxsiXhBUB5sDC2zzpikCdN1THZh0uiXOQM5Dp7RmDID+3ELhxr2P7yRO94+eP+qPQVKqTHuqVCsiIBONlDVB/inUCuyr4Bv5Ge4AWw7HihbC0/hcnsVPujQX3/bOKeOYpiSOFsMBpB9x64UEfISCWXCEJMrpvZLSyScW0Sqktfj+4uwD4Obl/lbLvGaGAwcsu+QcMFaMQxYKiRIOnDB0P2MNmOKNO/QxXjtDnlBVGhQuUmCs02K/UTPLaUL1x4vYFbWkYCnSP/8e3dTM+Xu/Pa602OsxmZew24tI0bhX73BlX35Gx1cnl1GdpxlTbX3noiiC37aHOyJzmXJjN6uyodWLQny9VTsF1IYTtTS0P0WwuwTy2T3OhkKazPebO1NOsLFgMxn2hBBnttEIxWpPaPsngwGTIn67PeOIIfUrIE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39840400004)(346002)(376002)(366004)(136003)(396003)(451199021)(38100700002)(5660300002)(316002)(8936002)(8676002)(44832011)(66556008)(4326008)(6916009)(66476007)(41300700001)(2906002)(66946007)(6666004)(478600001)(6486002)(6506007)(6512007)(186003)(36756003)(86362001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DULgUCGE4ctGWnZj0/6PcqKmY+9LFsK26xJ32jptttsd1lWuxQVKVtL3lHh4?=
 =?us-ascii?Q?/DLy6vUTQCNJbP9ZJlN4BUO2a+wzbeWcX6XqbkLUIMiD01VjBqH8kwGWtYAn?=
 =?us-ascii?Q?t61gXgvJc6425edVUiG68KiLx+n8qIbkcUTu14JqHCo+gp1hnqArO+vl8xma?=
 =?us-ascii?Q?iRhqZDfze+S9B8gUC7fUUzYTTmaH+VsoCprZkteM/kJyi3TnSW78byra+MqD?=
 =?us-ascii?Q?Y+D2Nll9spK3x5fs/OUNacSq6xRVFHmRz+1rUlk/lUxAgR/L2GEg72eq2AwF?=
 =?us-ascii?Q?R5FQvTGSdfYpgcvQoCkVnt0L9uKKbNQqNQRhempLtyKdxJliBSIRghrBbJCa?=
 =?us-ascii?Q?KdslmrvFRdjSrtM2cEibncbziWG/dYVqD7jVESwj/NfyS4KGyWxynVt9nWMZ?=
 =?us-ascii?Q?pGg/Vyy/EnGMXIDT/pRMp5yqHCXcQMGU57CgZWAub/aNdElK8GHj6M3n69EO?=
 =?us-ascii?Q?Y9fEfJwt0h/JN1vP2t0EB8WypC+YX+CDZ3Aj8fAyLKqDDKUqzT45176biRr+?=
 =?us-ascii?Q?DInTzZBLp4XqEf+1KmMNdDVlAbPVsq0ktbhPLdofoyujHZgilGQtglYQmOjc?=
 =?us-ascii?Q?lC6qEv2JcHLHnt8lhTUkPt2HXgjM2tH3N2zirEVEpaBR3gOPw8LuWPdNYsPJ?=
 =?us-ascii?Q?8T5E//me2FFEJulJKlRu97y0pUpLcNlN7fNmHVT6g+ZJ92yWfZ4HezuxjlLT?=
 =?us-ascii?Q?kGhNa05hCgUkjoYoBYOAYa5LB9i5v3ss9TCpmJSlAaRJAjwgDhto3o8Vkvf5?=
 =?us-ascii?Q?ksAOsACFiXq88fKYUWcku3b0EFuPCTz9K1sPCknYf2HX1Xqdf2Io4rp7vVbN?=
 =?us-ascii?Q?b7mEhdGmRVsuWuF3YAsi/PEMMO1fyn6EabjahG6l/1N2xMMndg+ZpaCxef1d?=
 =?us-ascii?Q?On49OgkXURr11HV9pLAWZWgeszBLz47P8eXehXDk39yDp63e933yJlRR0Nue?=
 =?us-ascii?Q?dehG6l5FxyiMjS7rgw49vaJ2mMNsSnI1b3prYPtoWO7AdvGmymGtIxmzJTWI?=
 =?us-ascii?Q?RkZ+i9CB9eaKjXrf6Fxb0zCZTSWcQGpy4a0sfx/Z0Wu0HLHR718ZPVYGIPws?=
 =?us-ascii?Q?XYQnEr5izH0MylvBZcpaBwpGFZ+k6VQV3s3HD0Lhj/3waudIZDZpEEZncq3y?=
 =?us-ascii?Q?21+UO35Szxv19a17dcQKll5qXpj/5c7xUypDpgQJ1YP9jn1dceI9B77GJNSX?=
 =?us-ascii?Q?ANiCoDo9QJaWPSUn7qRE599539AmEWZ3ORinILUAOo2iF+IK7DR8DRtT3x8V?=
 =?us-ascii?Q?aBlHGfQqZflmA08H22h6n0xYTwsO0CvPsseMNmCxgpWrv8tcKvoLTNFEZA33?=
 =?us-ascii?Q?gwUzaSnPZf70kHdNzaUOG7UIjgHem+gGpkDTdIas7qALRX9Bw+7qulF0dTMW?=
 =?us-ascii?Q?HHJMOKT6yl24jEvqXsKD3RN7pUcVeC7xHScnUSBZdq5pUSZO8XjiHzDubFw+?=
 =?us-ascii?Q?7QHZeHDSPSKJ/enOPf5SK/iUkKzLFm54y+6dV8EmSKqlU+zeppiPQOBMotl7?=
 =?us-ascii?Q?zbKrg0rJIfvr9mXjRrw+7FiNuDiIcypI09Xtqda82wbEY9R1kmWBHkC6HgO4?=
 =?us-ascii?Q?k05sf1yHIR+gcjXJscrLDrLa72AH+IAQBvwyruY5qRdpjxdAmb+GVYu1P6bQ?=
 =?us-ascii?Q?EIgvwRx4GhxLKU6gJsN5kZlJNC21Zp3S7hEFr/vU78w+gQpkf6pWL6tCZyBj?=
 =?us-ascii?Q?gJr2NQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: becaaa4e-93b6-4e62-bfb2-08db73baf987
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2023 07:25:09.1703 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O/qx1ZArDrF4nyK0s0/ERWI5YUqxV2P2EicKScMqjQvCrtikNQuGHqzMzWFYV+uEvzdK5IToEGBAOZryVgz1Na6VVxIdcORH33CEWBWSOZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR13MB5983
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BxPmqcWk7DjnSjAkQAr3Gacfrh77o/TApBjhd4vgOTw=;
 b=IfQ1k7ND1BF04XmEO5idjWqsPySn2jB++t5PNnW9jZH87sduOiACZmjv54cW5udVAfwyiSBcGOhb+E2hHvK1P1VXFawMMld8cF/ym9VUCiZgw8JzLvb7Lf3Rc/Na1P9oSiTOPFC+i0CXfHmIQ0XE7VGLhrBAVuQZxO2kM6/2ECU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=IfQ1k7ND
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Add direction
 metadata
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 22, 2023 at 03:35:12PM +0200, Marcin Szycik wrote:
> Currently it is possible to create a filter which breaks TX traffic, e.g.:
> 
> tc filter add dev $PF1 ingress protocol ip prio 1 flower ip_proto udp
> dst_port $PORT action mirred egress redirect dev $VF1_PR
> 
> This adds a rule which might match both TX and RX traffic, and in TX path
> the PF will actually receive the traffic, which breaks communication.
> 
> To fix this, add a match on direction metadata flag when adding a tc rule.
> 
> Because of the way metadata is currently handled, a duplicate lookup word
> would appear if VLAN metadata is also added. The lookup would still work
> correctly, but one word would be wasted. To prevent it, lookup 0 now always
> contains all metadata. When any metadata needs to be added, it is added to
> lookup 0 and lookup count is not incremented. This way, two flags residing
> in the same word will take up one word, instead of two.
> 
> Note: the drop action is also affected, i.e. it will now only work in one
> direction.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
