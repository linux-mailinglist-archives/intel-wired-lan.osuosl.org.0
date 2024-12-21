Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEB99FA1F0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 19:43:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CCC784BFA;
	Sat, 21 Dec 2024 18:43:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cU-Vs1ROYxRS; Sat, 21 Dec 2024 18:43:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5324180C18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734806606;
	bh=AHVpFzSjHV15hL40UVEK2lfc9SE8GqU1vNkl27mvewE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=szGLvapcIejr+rSuY8DGytC12Nz7EpK+z866QCXo97NR9bGv1muIPMTmTUrL9R5SF
	 AM9YWUleGUfotYbug6davahiE+MGGM2sU094pvnPWox09p5BKS33MrWyUbjYnoWBmt
	 ipa71WkMoccU1ZhzR8Bn5bibMoPgltgtrBQV0K9LsO05hfcgHCWZA3VtDAtb939c8U
	 0GJ/1XkATVjus0c728l7LBsCDvsD9a7LOg6Rs6NY6/vOHWBJQnzOjRVTN/SseZstbq
	 TaHku9+v0ddZGvPvgZJZ54yJJIFVEP6sQGeSfZORVS3VtKk8DGtxOba15DPe+WRLIA
	 pwf9mIS46azXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5324180C18;
	Sat, 21 Dec 2024 18:43:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1390375A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3A154264A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y5nX1FmlDbOB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 18:43:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7EDDA412E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EDDA412E6
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EDDA412E6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:42:58 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tP4R8-006hEJ-2D;
 Sat, 21 Dec 2024 18:42:50 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Sat, 21 Dec 2024 18:42:42 +0000
Message-ID: <20241221184247.118752-5-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241221184247.118752-1-linux@treblig.org>
References: <20241221184247.118752-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=AHVpFzSjHV15hL40UVEK2lfc9SE8GqU1vNkl27mvewE=; b=S++2bqj71vChMmEZ
 Y2xwVZ76pMT5+OEkkdY3mTRhYp0vfMpOjgMXiNXjuIZH7GwVp8tFFsexH3FyvwPZDRXFv+DGuy4Hr
 oj60cE9UjPo0p9TcmmZOtrqigdb3PFHcCcvLecpf11WqOrOTKVH2JgDWucNzukKSFWuDszEswF02B
 p3diC3C3Rw/FkBitBjBENgUT6svSGPSFQgE2UlBn7dclOJtlqTFNJqEgj610Lzl1MQCaU3hOlVrpU
 weAjFHnNseTRd3pcQfeCQgelC7kOL+wkoauR6yL0tRz9d/8eZKY54Qhb9ZuV0HEa5d971VVpHETia
 j0qmRWEg9suSuaS/IA==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=S++2bqj7
Subject: [Intel-wired-lan] [RFC net-next 4/9] i40e: Deadcode profile code
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

i40e_add_pinfo_to_list() was added in 2017 by
commit 1d5c960c5ef5 ("i40e: new AQ commands")

i40e_find_section_in_profile() was added in 2019 by
commit cdc594e00370 ("i40e: Implement DDP support in i40e driver")

Neither have been used.

Remove them.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 72 -------------------
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  8 ---
 2 files changed, 80 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 6779e281a648..370b4bddee44 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -4882,39 +4882,6 @@ i40e_find_segment_in_package(u32 segment_type,
 #define I40E_SECTION_HEADER(profile, offset)				\
 	(struct i40e_profile_section_header *)((u8 *)(profile) + (offset))
 
-/**
- * i40e_find_section_in_profile
- * @section_type: the section type to search for (i.e., SECTION_TYPE_NOTE)
- * @profile: pointer to the i40e segment header to be searched
- *
- * This function searches i40e segment for a particular section type. On
- * success it returns a pointer to the section header, otherwise it will
- * return NULL.
- **/
-struct i40e_profile_section_header *
-i40e_find_section_in_profile(u32 section_type,
-			     struct i40e_profile_segment *profile)
-{
-	struct i40e_profile_section_header *sec;
-	struct i40e_section_table *sec_tbl;
-	u32 sec_off;
-	u32 i;
-
-	if (profile->header.type != SEGMENT_TYPE_I40E)
-		return NULL;
-
-	I40E_SECTION_TABLE(profile, sec_tbl);
-
-	for (i = 0; i < sec_tbl->section_count; i++) {
-		sec_off = sec_tbl->section_offset[i];
-		sec = I40E_SECTION_HEADER(profile, sec_off);
-		if (sec->section.type == section_type)
-			return sec;
-	}
-
-	return NULL;
-}
-
 /**
  * i40e_ddp_exec_aq_section - Execute generic AQ for DDP
  * @hw: pointer to the hw struct
@@ -5137,45 +5104,6 @@ i40e_rollback_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
 	return status;
 }
 
-/**
- * i40e_add_pinfo_to_list
- * @hw: pointer to the hardware structure
- * @profile: pointer to the profile segment of the package
- * @profile_info_sec: buffer for information section
- * @track_id: package tracking id
- *
- * Register a profile to the list of loaded profiles.
- */
-int
-i40e_add_pinfo_to_list(struct i40e_hw *hw,
-		       struct i40e_profile_segment *profile,
-		       u8 *profile_info_sec, u32 track_id)
-{
-	struct i40e_profile_section_header *sec = NULL;
-	struct i40e_profile_info *pinfo;
-	u32 offset = 0, info = 0;
-	int status = 0;
-
-	sec = (struct i40e_profile_section_header *)profile_info_sec;
-	sec->tbl_size = 1;
-	sec->data_end = sizeof(struct i40e_profile_section_header) +
-			sizeof(struct i40e_profile_info);
-	sec->section.type = SECTION_TYPE_INFO;
-	sec->section.offset = sizeof(struct i40e_profile_section_header);
-	sec->section.size = sizeof(struct i40e_profile_info);
-	pinfo = (struct i40e_profile_info *)(profile_info_sec +
-					     sec->section.offset);
-	pinfo->track_id = track_id;
-	pinfo->version = profile->version;
-	pinfo->op = I40E_DDP_ADD_TRACKID;
-	memcpy(pinfo->name, profile->name, I40E_DDP_NAME_SIZE);
-
-	status = i40e_aq_write_ddp(hw, (void *)sec, sec->data_end,
-				   track_id, &offset, &info, NULL);
-
-	return status;
-}
-
 /**
  * i40e_aq_add_cloud_filters
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index bfebe18c0041..ccb8af472cd7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -452,20 +452,12 @@ int i40e_aq_get_ddp_list(struct i40e_hw *hw, void *buff,
 struct i40e_generic_seg_header *
 i40e_find_segment_in_package(u32 segment_type,
 			     struct i40e_package_header *pkg_header);
-struct i40e_profile_section_header *
-i40e_find_section_in_profile(u32 section_type,
-			     struct i40e_profile_segment *profile);
 int
 i40e_write_profile(struct i40e_hw *hw, struct i40e_profile_segment *i40e_seg,
 		   u32 track_id);
 int
 i40e_rollback_profile(struct i40e_hw *hw, struct i40e_profile_segment *i40e_seg,
 		      u32 track_id);
-int
-i40e_add_pinfo_to_list(struct i40e_hw *hw,
-		       struct i40e_profile_segment *profile,
-		       u8 *profile_info_sec, u32 track_id);
-
 /* i40e_ddp */
 int i40e_ddp_flash(struct net_device *netdev, struct ethtool_flash *flash);
 
-- 
2.47.1

